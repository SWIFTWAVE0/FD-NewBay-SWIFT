/datum/junkyard
	var/name = "Nothing Special"
	var/ruin_tags_whitelist
	var/ruin_tags_blacklist
	var/list/sub_themes = list() // other themes that work in tandem

/datum/junkyard/proc/before_map_generation(obj/overmap/visitable/sector/junkyard/E)
/datum/junkyard/proc/after_map_generation(obj/overmap/visitable/sector/junkyard/E)
/datum/junkyard/proc/get_sensor_data()
	return "No significant terrain features detected."

/obj/overmap/visitable/sector/junkyard/standart
	name = "junkyard"
	desc = "An old junkyard"
	color = "#b4aeae"
	junkyard_area = /area/junkyard/standart
	possible_themes = list(/datum/junkyard)
	map_generators = list(/datum/random_map/noise/junkyard/standart)
	ruin_tags_blacklist = RUIN_HABITAT|RUIN_WATER
	features_budget = 40

/datum/random_map/noise/junkyard/standart
	descriptor = "junkyard"
	smoothing_iterations = 4
	land_type = /turf/space

/area/junkyard/standart
	name = "\improper Junkyard area"
	base_turf = /turf/space
