/datum/junkyard
	var/name = "Nothing Special"
	var/ruin_tags_whitelist
	var/ruin_tags_blacklist
	var/list/sub_themes = list() // other themes that work in tandem

/datum/junkyard/proc/before_map_generation(obj/overmap/visitable/sector/junkyard/E)
/datum/junkyard/proc/after_map_generation(obj/overmap/visitable/sector/junkyard/E)
/datum/junkyard/proc/get_sensor_data()
	return "No significant terrain features detected."
