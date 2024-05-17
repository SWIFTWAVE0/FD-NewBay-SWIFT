
/datum/random_map/noise/junkyard
	descriptor = "junkyard"
	smoothing_iterations = 1
	smooth_single_tiles = 1

	var/land_type = /turf/space

	//intended x*y size, used to adjust spawn probs
	var/intended_x = 150
	var/intended_y = 150

/datum/random_map/noise/junkyard/New(seed, tx, ty, tz, tlx, tly, do_not_apply, do_not_announce, never_be_priority = 0, used_area, list/_plant_colors)
	if (isnull(target_turf_type))
		target_turf_type = world.turf

	..()

	GLOB.using_map.base_turf_by_z[num2text(tz)] = land_type

/datum/random_map/noise/junkyard/get_map_char(value)
	return "[noise2value(value)]"

/datum/random_map/noise/junkyard/get_appropriate_path(value)

/datum/random_map/noise/junkyard/get_additional_spawns(value, turf/T)
	if (T.is_wall())
		return
