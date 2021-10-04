/area/forest
	name = "\improper Snow Forest"
	icon_state = "ai"
	base_turf = /turf/simulated/floor/asteroid/aired
	sound_env = LARGE_ENCLOSED
	environment = 1
	base_turf = /turf/simulated/floor/asteroid/aired


/area/forest/survivors_cave
	name = "\improper Survivors Cave"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/forest/survivors_cave/med
	name = "\improper Survivors Cave Medical"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/forest/survivors_cave/cargo
	name = "\improper Survivors Cave Cargo"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_mailsorting, access_cargo)

/area/forest/survivors_cave/comendant
	name = "\improper Survivors Cave Comendant"
	icon_state = "med"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_hop)

/area/forest/pod
	name = "\improper Crashed Pod"
	icon_state = "bridge"

/area/forest/landing
	name = "\improper Landing Zone"
	icon_state = "bridge"


/area/forest/hunter_cabin
	name = "\improper Hunter Cabin"
	icon_state = "hallP"


/area/forest/complex
	name = "\improper Abandoned Complex"
	icon_state = "hallS"

/area/forest/charon
	name = "\improper Crashed Charon"
	icon_state = "green"



/area/forest/site
	name = "\improper Forgotten Site"
	icon_state = "medbay"


/area/forest/camp
	name = "\improper Native Camp"
	icon_state = "engine"


/area/forest/old_houses_1
	name = "Old Houses North"
	icon_state = "storage"

/area/forest/old_houses_2
	name = "Old Houses South"
	icon_state = "storage"

/area/forest/grove_1
	name = "\improper North Grove"
	icon_state = "yellow"

/area/forest/grove_2
	name = "\improper North-West Grove"
	icon_state = "yellow"

/area/forest/grove_3
	name = "\improper South-West Grove"
	icon_state = "yellow"

/area/forest/grove_4
	name = "\improper East Grove"
	icon_state = "yellow"

/area/forest/cave_1
	name = "\improper North Cave"
	icon_state = "bridge"

/area/forest/cave_2
	name = "\improper South Cave"
	icon_state = "bridge"

/area/forest/labiryth
	name = "\improper Forest Labiryth"
	icon_state = "medbay"

/area/forest/lake
	name = "\improper Frozen Lake"
	icon_state = "hallP"
	base_turf = /turf/simulated/floor/exoplanet/water/shallow


/area/forest/coms
	name = "\improper connect"
	icon_state = "engine"

/area/forest/atmos
	name = "\improper Forest Atmos"
	icon_state = "bridge"

/area/forest/downground
	name = "\improper downground"
	icon_state = "security"

/area/forest/downground2
	name = "\improper research"
	icon_state = "medbay"


/area/forest/Nexus
	name = "\improper dead Nexus"
	icon_state = "medbay"


/area/forest/war
	name = "\improper war"
	icon_state = "security"


/area/forest/war_lake
	name = "\improper war lake"
	icon_state = "medbay"
	base_turf = /turf/simulated/floor/exoplanet/water/shallow

/area/forest/city_ruins
	name = "\improper city ruins"
	icon_state = "medbay"


/area/forest/teleporter
	name = "Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_explorer)


/area/forest/teleporter2
	name = "city teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = null
	requires_power = 0

var/list/interior_areas = list (/area/forest/survivors_cave, /area/forest/teleporter, /area/forest/teleporter2, /area/forest/downground,/area/forest/downground2,
/area/forest/Nexus, /area/forest/coms,/area/forest/old_houses_1,/area/forest/old_houses_2,/area/forest/complex)




