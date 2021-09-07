/obj/effect/decal/cleanable/footprint
	name = "footprints"
	icon = 'icons/effects/footprints1.dmi'
	icon_state = "human"
	layer = PLATING_LAYER
	mouse_opacity = 1

/obj/effect/decal/cleanable/footprint/New(var/newloc,var/desired_dir = 0)
	set_dir(desired_dir)
	. = ..()

/obj/effect/decal/cleanable/footprint/emboss
	icon_state = "human_emboss_enter"

/obj/effect/decal/cleanable/footprint/emboss/exit
	icon_state = "human_emboss_exit"

