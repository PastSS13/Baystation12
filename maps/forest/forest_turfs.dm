/turf/simulated/floor/exoplanet/snow

	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)
	var/has_footprints = TRUE
	var/footprint_color = "#FFFFFF"
	var/print_alpha = 255
	movement_delay = 1
	outdoors = 1
	temperature = 250
/turf/simulated/floor/exoplanet/ice

	outdoors = 1
	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)

/turf/simulated/floor/exoplanet/lava


/turf/simulated/floor/exoplanet/water/shallow
	reagent_type = /datum/reagent/toxin/tar
	movement_delay = 12
	outdoors = 1
	temperature = 250
	turf/simulated/floor/exoplanet/water/shallow/get_footstep_sound(mob/caller)
		return get_footstep(/decl/footsteps/water, caller)

/turf/simulated/floor/exoplanet/water/shallow/tar
	name = "tar"
	icon = 'icons/turf/shrouded.dmi'
	icon_state = "shrouded_tar"
	desc = "A pool of viscous and sticky tar."
	movement_delay = 12
	reagent_type = /datum/reagent/toxin/tar
	dirt_color = "#3e3960"
	outdoors = 1
	temperature = 250

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/alt2
	outdoors = 1

/turf/simulated/floor/grasss/cataclysmdda
	outdoors = 1

/turf/simulated/floor/grasss/cataclysmdda/dirt
	outdoors = 1

/turf/simulated/water/cataclysmdda
	outdoors = 1

/turf/simulated/floor/asphalt
	outdoors = 1

/turf/simulated/floor/asteroid/aired
	layer = 3

/turf/simulated/floor/exoplanet/barren
	outdoors = 1
	layer = 2
	initial_gas = list(oxygen = MOLES_O2STANDARD * 1.4, nitrogen = MOLES_N2STANDARD * 1.4)

/turf/simulated/floor/stalker/floor/road
	outdoors = 1
