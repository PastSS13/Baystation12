#if !defined(using_map_DATUM)

	#define using_map_DATUM /datum/map/forest

	#include "forest_cards_ids_override.dm"
	#include "forest_ranks_override.dm"
	#include "forest_jobs_override.dm"
	#include "forest_setup.dm"
    #include "forest_lobby.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_ec_skillbages.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_pda.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_tactical.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"


	#include "forest_areas.dm"
	#include "forest_misc.dm"
	#include "forest_turfs.dm"

	#include "forest_snatch.dm"

	#include "forest-1.dmm"
	#include "forest-2.dmm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Forest
#endif