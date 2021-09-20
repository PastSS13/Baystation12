/mob/living/simple_animal/hostile/hostiles
	faction = list("hostile")
	var/stop_automated_movement_when_pulled = 0
	environment_smash = 1 //Set to 1 to break closets,tables,racks, etc; 2 for walls; 3 for rwalls
	var/atom/target	//set ONLY it and NULLIFY projectiletype, if we have projectile IN CASING //delay for the automated movement.
	var/list/emote_taunt = list()
	var/taunt_chance = 0
	var/fearless = 1
	var/fearborder = 20
	var/ranged_message = "fires" //Fluff text for ranged mobs
	var/ranged_cooldown = 0 //What the starting cooldown is on ranged attacks
	var/ranged_cooldown_cap = 3 //What ranged attackLoseTargets, after being used are set to, to go back on cooldown, defaults to 3 life() ticks
	var/retreat_distance = null //If our mob runs from players when they're too close, set in tile distance. By default, mobs do not retreat.
	var/minimum_distance = 1 //Minimum approach distance, so ranged mobs chase targets down, but still keep their distance set in tiles to the target, set higher to make mobs keep distance
	var/target_distance
	var/target_last_loc = null
	var/min_range_distance = 4

//These vars are related to how mobs locate and target
	var/robust_searching = 0 //By default, mobs have a simple searching method, set this to 1 for the more scrutinous searching (stat_attack, stat_exclusive, etc), should be disabled on most mobs
	var/vision_range = 9 //How big of an area to search for targets in, a vision of 9 attempts to find targets as soon as they walk into screen view
	var/aggro_vision_range = 9 //If a mob is aggro, we search in this radius. Defaults to 9 to keep in line with original simple mob aggro radius
	var/idle_vision_range = 9 //If a mob is just idling around, it's vision range is limited to this. Defaults to 9 to keep in line with original simple mob aggro radius
	var/search_objects = 0 //If we want to consider objects when searching around, set this to 1. If you want to search for objects while also ignoring mobs until hurt, set it to 2. To completely ignore mobs, even when attacked, set it to 3
	var/list/wanted_objects = list() //A list of objects that will be checked against to attack, should we have search_objects enabled
	var/stat_attack = 0 //Mobs with stat_attack to 1 will attempt to attack things that are unconscious, Mobs with stat_attack set to 2 will attempt to attack the dead.
	var/stat_exclusive = 0 //Mobs with this set to 1 will exclusively attack things defined by stat_attack, stat_attack 2 means they will only attack corpses

	var/see_through_walls = 0
	var/long_attack = 0

//	var/deletable = 0 //Self-deletable dead bodies
	var/target_dist


/mob/living/simple_animal/hostile/hostiles/Life()
	. = ..()
	if(ranged)
		ranged_cooldown--
	if(!.) //dead
		walk(src, 0) //stops walking
		return 0


//////////////HOSTILE MOB TARGETTING AND AGGRESSION////////////


/mob/living/simple_animal/hostile/hostiles/proc/ListTargets()//Step 1, find out what we can see
	if(!search_objects)
		var/list/Mobs = list()
		if(see_through_walls)
			for(var/mob/M in range(vision_range, src))
				Mobs += M
			Mobs -= src
		else
			Mobs = hearers(vision_range, src) - src //Remove self, so we don't suicide

	return

/mob/living/simple_animal/hostile/hostiles/proc/FindTarget(var/list/possible_targets, var/HasTargetsList = 0)//Step 2, filter down possible targets to things we actually care about
	var/list/Targets = list()
	if(!HasTargetsList)
		possible_targets = ListTargets()
	for(var/atom/A in possible_targets)
		if(Found(A))//Just in case people want to override targetting
			Targets = list(A)
			continue
	var/Target = PickTarget(Targets)
	GiveTarget(Target)
	return Target //We now have a target

/mob/living/simple_animal/hostile/hostiles/proc/Found(atom/A)//This is here as a potential override to pick a specific target if available
	return

/mob/living/simple_animal/hostile/hostiles/proc/PickTarget(list/Targets)//Step 3, pick amongst the possible, attackable targets
	if(target != null)//If we already have a target, but are told to pick again, calculate the lowest distance between all possible, and pick from the lowest distance targets
		for(var/atom/A in Targets)
			target_dist = get_dist(src, target)
			var/possible_target_distance = get_dist(src, A)
			if(target_dist < possible_target_distance)
				Targets -= A
	if(!Targets.len)//We didnt find nothin!
		return
	var/chosen_target = pick(Targets)//Pick the remaining targets (if any) at random
	return chosen_target

/mob/living/simple_animal/hostile/hostiles/proc/GiveTarget(new_target)//Step 4, give us our selected target
	target = new_target
	if(target != null)
		Aggro()
		return 1

/mob/living/simple_animal/hostile/hostiles/proc/MoveToTarget(var/list/possible_targets)//Step 5, handle movement between us and our target
	if(target in possible_targets)
		var/target_distance = get_dist(src,target)
		if(ranged)//We ranged? Shoot at em
			if((target_distance >= min_range_distance && ranged_cooldown <= 0) || long_attack)//But make sure they're a tile away at least, and our range attack is off cooldown
				OpenFire(target)
				if(!long_attack)
					sleep(50)

			return 1
		if(retreat_distance != null)//If we have a retreat distance, check if we need to run from our target
			if(target_distance <= retreat_distance)//If target's closer than our retreat distance, run
				walk_away(src,target,retreat_distance,move_to_delay)
			else
				Goto(target,move_to_delay,minimum_distance)//Otherwise, get to our minimum distance so we chase them
		else
			if(src.health <= fearborder && !fearless)
				walk_away(src,target,retreat_distance,move_to_delay)
			else
				Goto(target,move_to_delay,minimum_distance)
		if(target)
			if(isturf(loc) && target.Adjacent(src))	//If they're next to us, attack
				AttackingTarget()
		return 1
	if(environment_smash)
		if(target.loc != null && get_dist(src, target.loc) <= vision_range)//We can't see our target, but he's in our vision range still
			if(environment_smash >= 2)//If we're capable of smashing through walls, forget about vision completely after finding our target
				Goto(target,move_to_delay,minimum_distance)
				FindHidden()
				return 1
			else
				if(FindHidden())
					return 1
	LoseTarget()
	return 0

/mob/living/simple_animal/hostile/hostiles/proc/Goto(target, delay, minimum_distance)
	walk_to(src, target, minimum_distance, delay)

/mob/living/simple_animal/hostile/hostiles/adjustBruteLoss(damage)
	..(damage)
	if(!ckey && !stat && search_objects < 3 && damage > 0)//Not unconscious, and we don't ignore mobs
		if(search_objects)//Turn off item searching and ignore whatever item we were looking at, we're more concerned with fight or flight
			search_objects = 0
			target = null


			FindTarget()
		else if(target != null && prob(40))//No more pulling a mob forever and having a second player attack it, it can switch targets now if it finds a more suitable one
			FindTarget()

/mob/living/simple_animal/hostile/hostiles/proc/AttackingTarget()
	target.attack_animal(src)

/mob/living/simple_animal/hostile/hostiles/proc/Aggro()
	vision_range = aggro_vision_range
	if(target && emote_taunt.len && prob(taunt_chance))
		emote("me", 1, "[pick(emote_taunt)] at [target].")
		taunt_chance = max(taunt_chance-7,2)


/mob/living/simple_animal/hostile/hostiles/proc/LoseAggro()

	vision_range = idle_vision_range
	taunt_chance = initial(taunt_chance)

/mob/living/simple_animal/hostile/hostiles/proc/LoseTarget()
	target = null
	if(target_last_loc)
		Goto(target_last_loc, move_to_delay, 1)
		target_last_loc = null
	else
		walk(src, 0)
	LoseAggro()

//////////////END HOSTILE MOB TARGETTING AND AGGRESSION////////////

/mob/living/simple_animal/hostile/hostiles/death(gibbed)
	LoseTarget()
	..(gibbed)

/mob/living/simple_animal/hostile/hostiles/proc/summon_backup(distance)

	playsound(loc, 'sound/machines/chime.ogg', 50, 1, -1)
	for(var/mob/living/simple_animal/hostile/hostiles/M in oview(distance, src))

		return

/mob/living/simple_animal/hostile/hostiles/proc/OpenFire(atom/A)

	visible_message("<span class='danger'><b>[src]</b> [ranged_message] at [A]!</span>")

	if(rapid)
		spawn(1)
			Shoot(A)
		spawn(4)
			Shoot(A)
		spawn(6)
			Shoot(A)
	else
		Shoot(A)
	ranged_cooldown = ranged_cooldown_cap
	return

/mob/living/simple_animal/hostile/hostiles/proc/Shoot(atom/targeted_atom)
	if(targeted_atom == src.loc)
		return
	var/turf/startloc = get_turf(src)
	if(casingtype)
		var/obj/item/ammo_casing/casing = new casingtype
		playsound(src, projectilesound, 100, 1)

		casing.loc = startloc
	else if(projectiletype)
		var/obj/item/projectile/P = new projectiletype(src.loc)
		playsound(src, projectilesound, 100, 1)
		P.current = startloc
		P.starting = startloc
		P.firer = src
		P.yo = targeted_atom.y - startloc.y
		P.xo = targeted_atom.x - startloc.x


		P.original = targeted_atom

	return

/mob/living/simple_animal/hostile/hostiles/proc/EscapeConfinement()
	if(buckled)
		buckled.attack_animal(src)
	if(!isturf(src.loc) && src.loc != null)//Did someone put us in something?
		var/atom/A = src.loc
		A.attack_animal(src)//Bang on it till we get out
	return

/mob/living/simple_animal/hostile/hostiles/proc/FindHidden()
	if(istype(target.loc, /obj/structure/closet) || istype(target.loc, /obj/machinery/disposal) || istype(target.loc, /obj/machinery/sleeper))
		var/atom/A = target.loc
		Goto(A,move_to_delay,minimum_distance)
		if(A.Adjacent(src))
			A.attack_animal(src)
		return 1

/mob/living/simple_animal/hostile/hostiles/RangedAttack(atom/A, params) //Player firing
	if(ranged && ranged_cooldown <= 0)
		target = A
		OpenFire(A)
	..()



////// AI Status ///////

/mob/living/simple_animal/hostile/hostiles/proc/AIShouldSleep(var/list/possible_targets)
	return !FindTarget(possible_targets, 1)