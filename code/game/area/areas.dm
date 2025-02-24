// Areas.dm



// ===
/area
	var/global/global_uid = 0
	var/uid
	var/blowout = 0
	var/area_flags
	var/ambient_music_cooldown				= 1000
	var/ambient_environment_cooldown		= 1000
	var/list/ambient_background_cooldown = null
	var/list/ambient_music = list(	'sound/stalker/ambience/amb01.ogg','sound/stalker/ambience/amb02.ogg',
									'sound/stalker/ambience/amb03.ogg','sound/stalker/ambience/amb04.ogg',
									'sound/stalker/ambience/amb05.ogg','sound/stalker/ambience/amb06.ogg',
									'sound/stalker/ambience/amb07.ogg','sound/stalker/ambience/amb08.ogg',
									'sound/stalker/ambience/amb09.ogg','sound/stalker/ambience/amb10.ogg',
									'sound/stalker/ambience/amb11.ogg','sound/stalker/ambience/amb12.ogg',
									'sound/stalker/ambience/amb13.ogg','sound/stalker/ambience/amb15.ogg',
									'sound/stalker/ambience/amb16.ogg','sound/stalker/ambience/amb17.ogg',
									'sound/stalker/ambience/amb20.ogg','sound/stalker/ambience/amb21.ogg',
									'sound/stalker/ambience/amb22.ogg','sound/stalker/ambience/amb23.ogg',
									'sound/stalker/ambience/amb24.ogg','sound/stalker/ambience/amb25.ogg',
									'sound/stalker/ambience/amb26.ogg','sound/stalker/ambience/amb27.ogg',
									'sound/stalker/ambience/amb28.ogg','sound/stalker/ambience/amb29.ogg',
									'sound/stalker/ambience/amb30.ogg','sound/stalker/ambience/amb31.ogg',
									'sound/stalker/ambience/amb32.ogg','sound/stalker/ambience/amb33.ogg',
									'sound/stalker/ambience/amb34.ogg','sound/stalker/ambience/amb35.ogg',
									'sound/stalker/ambience/amb36.ogg','sound/stalker/ambience/amb37.ogg',
									'sound/stalker/ambience/amb38.ogg')
	var/list/ambient_environment = null
	var/list/ambient_environment_night = null
	var/list/ambient_background = null
	var/environment = 0
	var/safezone = 0
	var/outdoors = FALSE
	var/controlled_by = null


/area/New()
	icon_state = ""
	uid = ++global_uid

	if(!requires_power)
		power_light = 0
		power_equip = 0
		power_environ = 0

	if(dynamic_lighting)
		luminosity = 0
	else
		luminosity = 1

	//name = replacetextEx(name, "\improper", "")

	..()

/area/Initialize()
	. = ..()
	if(!requires_power || !apc)
		power_light = 0
		power_equip = 0
		power_environ = 0
	if(alwaysgravity == TRUE)
		has_gravity = 1
	else if(nevergravity == TRUE)
		has_gravity = 0
	power_change()		// all machines set to current power level, also updates lighting icon

/area/Destroy()
	..()
	return QDEL_HINT_HARDDEL

// Changes the area of T to A. Do not do this manually.
// Area is expected to be a non-null instance.
/proc/ChangeArea(var/turf/T, var/area/A)
	if(!istype(A))
		CRASH("Area change attempt failed: invalid area supplied.")
	var/area/old_area = get_area(T)
	if(old_area == A)
		return
	A.contents.Add(T)
	if(old_area)
		old_area.Exited(T, A)
		for(var/atom/movable/AM in T)
			old_area.Exited(AM, A)  // Note: this _will_ raise exited events.
	A.Entered(T, old_area)
	for(var/atom/movable/AM in T)
		A.Entered(AM, old_area) // Note: this will _not_ raise moved or entered events. If you change this, you must also change everything which uses them.

	for(var/obj/machinery/M in T)
		M.area_changed(old_area, A) // They usually get moved events, but this is the one way an area can change without triggering one.

/area/proc/get_contents()
	return contents

/area/proc/get_cameras()
	var/list/cameras = list()
	for (var/obj/machinery/camera/C in src)
		cameras += C
	return cameras

/area/proc/is_shuttle_locked()
	return 0

/area/proc/atmosalert(danger_level, var/alarm_source)
	if (danger_level == 0)
		atmosphere_alarm.clearAlarm(src, alarm_source)
	else
		atmosphere_alarm.triggerAlarm(src, alarm_source, severity = danger_level)

	//Check all the alarms before lowering atmosalm. Raising is perfectly fine.
	for (var/obj/machinery/alarm/AA in src)
		if (!(AA.stat & (NOPOWER|BROKEN)) && !AA.shorted && AA.report_danger_level)
			danger_level = max(danger_level, AA.danger_level)

	if(danger_level != atmosalm)
		if (danger_level < 1 && atmosalm >= 1)
			//closing the doors on red and opening on green provides a bit of hysteresis that will hopefully prevent fire doors from opening and closing repeatedly due to noise
			set_emergency_lighting(0)
			air_doors_open()
		else if (danger_level >= 2 && atmosalm < 2)
			set_emergency_lighting(1)
			air_doors_close()

		atmosalm = danger_level
		for (var/obj/machinery/alarm/AA in src)
			AA.update_icon()

		return 1
	return 0

/area/proc/air_doors_close()
	if(!air_doors_activated)
		air_doors_activated = 1
		if(!all_doors)
			return
		for(var/obj/machinery/door/firedoor/E in all_doors)
			if(!E.blocked)
				if(E.operating)
					E.nextstate = FIREDOOR_CLOSED
				else if(!E.density)
					spawn(0)
						E.close()

/area/proc/air_doors_open()
	if(air_doors_activated)
		air_doors_activated = 0
		if(!all_doors)
			return
		for(var/obj/machinery/door/firedoor/E in all_doors)
			E.locked = FALSE
			if(!E.blocked)
				if(E.operating)
					E.nextstate = FIREDOOR_OPEN
				else if(E.density)
					spawn(0)
						if(E.can_safely_open())
							E.open()


/area/proc/fire_alert()
	if(!fire)
		fire = 1	//used for firedoor checks
		update_icon()
		mouse_opacity = 0
		if(!all_doors)
			return
		for(var/obj/machinery/door/firedoor/D in all_doors)
			if(!D.blocked)
				if(D.operating)
					D.nextstate = FIREDOOR_CLOSED
				else if(!D.density)
					spawn()
						D.close()

/area/proc/fire_reset()
	if (fire)
		fire = 0	//used for firedoor checks
		update_icon()
		mouse_opacity = 0
		if(!all_doors)
			return
		for(var/obj/machinery/door/firedoor/D in all_doors)
			D.locked = FALSE
			if(!D.blocked)
				if(D.operating)
					D.nextstate = FIREDOOR_OPEN
				else if(D.density)
					spawn(0)
					D.open()

/area/proc/readyalert()
	if(!eject)
		eject = 1
		update_icon()
	return

/area/proc/readyreset()
	if(eject)
		eject = 0
		update_icon()
	return

/area/proc/partyalert()
	if (!( party ))
		party = 1
		update_icon()
		mouse_opacity = 0
	return

/area/proc/partyreset()
	if (party)
		party = 0
		mouse_opacity = 0
		update_icon()
		for(var/obj/machinery/door/firedoor/D in src)
			if(!D.blocked)
				if(D.operating)
					D.nextstate = FIREDOOR_OPEN
				else if(D.density)
					spawn(0)
					D.open()
	return

/area/on_update_icon()
	if ((fire || eject || party) && (!requires_power||power_environ))//If it doesn't require power, can still activate this proc.
		if(fire && !eject && !party)
			icon_state = "blue"
		/*else if(atmosalm && !fire && !eject && !party)
			icon_state = "bluenew"*/
		else if(!fire && eject && !party)
			icon_state = "red"
		else if(party && !fire && !eject)
			icon_state = "party"
		else
			icon_state = "blue-red"
	else
	//	new lighting behaviour with obj lights
		icon_state = null

/area/proc/set_lightswitch(var/new_switch)
	if(lightswitch != new_switch)
		lightswitch = new_switch
		for(var/obj/machinery/light_switch/L in src)
			L.sync_state()
		update_icon()
		power_change()

/area/proc/set_emergency_lighting(var/enable)
	for(var/obj/machinery/light/M in src)
		M.set_emergency_lighting(enable)


var/list/mob/living/forced_ambiance_list = new

/area/Entered(A)
	..()
	if(!istype(A,/mob/living))	return

	var/mob/living/L = A
	if(!L.ckey)	return

	if(!L.lastarea)
		L.lastarea = get_area(L.loc)
	var/area/newarea = get_area(L.loc)
	var/area/oldarea = L.lastarea
	if(oldarea.has_gravity != newarea.has_gravity)
		if(newarea.has_gravity == 1 && !MOVING_DELIBERATELY(L)) // Being ready when you change areas allows you to avoid falling.
			thunk(L)
		L.update_floating()

	play_ambience(L)
	L.lastarea = newarea

/area/proc/play_ambience(var/mob/living/L)
	// Ambience goes down here -- make sure to list each area seperately for ease of adding things in later, thanks! Note: areas adjacent to each other should have the same sounds to prevent cutoff when possible.- LastyScratch
	if(!(L && L.client && L.get_preference_value(/datum/client_preference/play_ambiance) == GLOB.PREF_YES))	return

	var/turf/T = get_turf(L)
/*inf[MOVED]
	var/hum = 0
	if(L.get_sound_volume_multiplier() >= 0.2 && !always_unpowered && power_environ)
		for(var/obj/machinery/atmospherics/unary/vent_pump/vent in src)
			if(vent.can_pump())
				hum = 1
				break
	if(hum)
		if(!L.client.ambience_playing)
			L.client.ambience_playing = 1
			L.playsound_local(T,sound('sound/ambience/shipambience.ogg', repeat = 1, wait = 0, volume = 20, channel = GLOB.ambience_sound_channel))
	else
		if(L.client.ambience_playing)
			L.client.ambience_playing = 0
			sound_to(L, sound(null, channel = GLOB.ambience_sound_channel))
inf*/
	if(L.lastarea != src)
		if(LAZYLEN(forced_ambience))
			forced_ambiance_list |= L
			L.playsound_local(T,sound(pick(forced_ambience), repeat = 1, wait = 0, volume = 60, channel = GLOB.forced_ambience_sound_channel)) //inf //was: L.playsound_local(T,sound(pick(forced_ambience), repeat = 1, wait = 0, volume = 25, channel = GLOB.lobby_sound_channel))
		else	//stop any old area's forced ambience, and try to play our non-forced ones
			sound_to(L, sound(null, channel = GLOB.forced_ambience_sound_channel)) //inf //was: sound_to(L, sound(null, channel = GLOB.lobby_sound_channel))
			forced_ambiance_list -= L
	if(ambience.len && prob(config.ambience_probability) && (world.time >= L.client.played + config.ambience_delay))//inf, was: if(ambience.len && prob(5) && (world.time >= L.client.played + 3 MINUTES))
		L.playsound_local(T, sound(pick(ambience), repeat = 0, wait = 0, volume = 50, channel = GLOB.ambience_sound_channel)) //inf //was: L.playsound_local(T, sound(pick(ambience), repeat = 0, wait = 0, volume = 15, channel = GLOB.lobby_sound_channel))
		L.client.played = world.time
//[INF]
	var/hum = 0
	if(L.get_sound_volume_multiplier() >= 0.2 && !always_unpowered && power_environ)
		for(var/obj/machinery/atmospherics/unary/vent_pump/vent in src)
			if(vent.can_pump())
				hum = 1
				break
	if(hum)
		if(!L.client.ambience_playing)
			L.client.ambience_playing = 1
			L.playsound_local(T,sound('sound/stalker/ambience/amb01.ogg','sound/stalker/ambience/amb02.ogg',
									'sound/stalker/ambience/amb03.ogg','sound/stalker/ambience/amb04.ogg',
									'sound/stalker/ambience/amb05.ogg','sound/stalker/ambience/amb06.ogg',
									'sound/stalker/ambience/amb07.ogg','sound/stalker/ambience/amb08.ogg',
									'sound/stalker/ambience/amb09.ogg','sound/stalker/ambience/amb10.ogg',
									'sound/stalker/ambience/amb11.ogg','sound/stalker/ambience/amb12.ogg',
									'sound/stalker/ambience/amb13.ogg','sound/stalker/ambience/amb15.ogg',
									'sound/stalker/ambience/amb16.ogg','sound/stalker/ambience/amb17.ogg',
									'sound/stalker/ambience/amb20.ogg','sound/stalker/ambience/amb21.ogg',
									'sound/stalker/ambience/amb22.ogg','sound/stalker/ambience/amb23.ogg',
									'sound/stalker/ambience/amb24.ogg','sound/stalker/ambience/amb25.ogg',
									'sound/stalker/ambience/amb26.ogg','sound/stalker/ambience/amb27.ogg',
									/*'sound/stalker/ambience/amb28.ogg',*/'sound/stalker/ambience/amb29.ogg',
									'sound/stalker/ambience/amb30.ogg','sound/stalker/ambience/amb31.ogg',
									'sound/stalker/ambience/amb32.ogg','sound/stalker/ambience/amb33.ogg',
									'sound/stalker/ambience/amb34.ogg','sound/stalker/ambience/amb35.ogg',
									'sound/stalker/ambience/amb36.ogg','sound/stalker/ambience/amb37.ogg',
									'sound/stalker/ambience/amb38.ogg', repeat = 1, wait = 0, volume = 60, channel = GLOB.environment_sound_channel))
	else
		if(L.client.ambience_playing)
			L.client.ambience_playing = 0
			sound_to(L, sound(null, channel = GLOB.environment_sound_channel))
//[/INF]
/area/proc/gravitychange(var/gravitystate = 0)
//[INF]
	if(gravstat in list(AREA_GRAVITY_NEVER, AREA_GRAVITY_ALWAYS))
		return
//[/INF]
	has_gravity = gravitystate

	for(var/mob/M in src)
		if(has_gravity)
			thunk(M)
		M.update_floating()

/area/proc/thunk(mob/mob)
	if(istype(get_turf(mob), /turf/space)) // Can't fall onto nothing.
		return

	if(mob.Check_Shoegrip())
		return

	if(istype(mob,/mob/living/carbon/human/))
		var/mob/living/carbon/human/H = mob
		if(!H.buckled && prob(H.skill_fail_chance(SKILL_EVA, 100, SKILL_PROF)))
			if(!MOVING_DELIBERATELY(H))
				H.AdjustStunned(4)
				H.AdjustWeakened(4)
			else
				H.AdjustStunned(2)
				H.AdjustWeakened(2)
			to_chat(mob, "<span class='notice'>The sudden appearance of gravity makes you fall to the floor!</span>")

/area/proc/prison_break()
	var/obj/machinery/power/apc/theAPC = get_apc()
	if(theAPC && theAPC.operating)
		for(var/obj/machinery/power/apc/temp_apc in src)
			temp_apc.overload_lighting(70)
		for(var/obj/machinery/door/airlock/temp_airlock in src)
			INVOKE_ASYNC(temp_airlock, /obj/machinery/door/airlock/proc/prison_open)	// INF was	temp_airlock.prison_open()
		for(var/obj/machinery/door/window/temp_windoor in src)
			INVOKE_ASYNC(temp_windoor, /obj/machinery/door/proc/open)	// INF was	temp_windoor.open()

/area/proc/has_gravity()
	return has_gravity

/area/space/has_gravity()
	return 0
//inf.overriden in infinity/code/modules/power/gravity_generator/areas.dm
/proc/has_gravity(atom/AT, turf/T)
	if(!T)
		T = get_turf(AT)
	var/area/A = get_area(T)
	if(istype(T, /turf/space)) //because space
		return 0
	else if(istype(A) && A?.has_gravity())//inf, was: else if(A && A.has_gravity)
		return 1
	else
		if(T)
			return 1
	return 0

/area/proc/get_dimensions()
	var/list/res = list("x"=1,"y"=1)
	var/list/min = list("x"=world.maxx,"y"=world.maxy)
	for(var/turf/T in src)
		res["x"] = max(T.x, res["x"])
		res["y"] = max(T.y, res["y"])
		min["x"] = min(T.x, min["x"])
		min["y"] = min(T.y, min["y"])
	res["x"] = res["x"] - min["x"] + 1
	res["y"] = res["y"] - min["y"] + 1
	return res

/area/proc/has_turfs()
	return !!(locate(/turf) in src)

/area/proc/can_modify_area()
	if (src && src.area_flags & AREA_FLAG_NO_MODIFY)
		return FALSE
	return TRUE
