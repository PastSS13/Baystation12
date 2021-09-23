//this item is intended to give the effect of entering the mine, so that light gradually fades
/obj/effect/light_emitter
	name = "Light emitter"
	icon = 'icons/effects/landmarks.dmi'
	icon_state = "landmark"
	anchored = TRUE
	invisibility = 101
	var/set_luminosity = 8
	var/set_cap = 1

/obj/effect/light_emitter/Initialize()
	. = ..()
	set_light(set_luminosity, set_cap)

/obj/effect/light_emitter/singularity_pull()
	return

/obj/effect/light_emitter/singularity_act()
	return
