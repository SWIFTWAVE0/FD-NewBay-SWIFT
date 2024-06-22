// #include "scg_city_restored_shuttles.dm"
#include "code/areas.dm"
#include "code/closet.dm"
#include "code/jobs.dm"
#include "code/outfit.dm"

/datum/map_template/ruin/exoplanet/scg_city_restored
	name = "SCG City"
	id = "scg_city_restored"
	description = "SCG City... Thats all, yeah."
	suffixes = list("scg_city_restored/scg_city_restored.dmm")
	spawn_cost = 10
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS|TEMPLATE_FLAG_NO_RUINS
	ruin_tags = RUIN_HUMAN
//	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/lovely)

/singleton/submap_archetype/playablecity
	descriptor = "SCG City"
	crew_jobs = list(/datum/job/submap/citydweller, /datum/job/submap/citymayor)

/obj/submap_landmark/spawnpoint/citydweller_spawn
	name = "City Dweller"

/obj/submap_landmark/spawnpoint/citymayor_spawn
	name = "City Head"

/obj/submap_landmark/joinable_submap/city
	name = "SCG City"
	archetype = /singleton/submap_archetype/playablecity
