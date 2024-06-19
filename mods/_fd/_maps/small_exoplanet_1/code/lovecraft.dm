/obj/overmap/visitable/sector/lovecraft
	name = "NOTHING FOR NOW"
	desc = "NOTHING FOR NOW."
	sector_flags = OVERMAP_SECTOR_KNOWN
	color = COLOR_DARK_GREEN_GRAY
	icon_state = "globe"
	initial_generic_waypoints = list()

	var/list/lightmain
	var/list/lightupper

/obj/overmap/visitable/sector/lovecraft/Initialize()
	..()

	lightmain = block(locate(world.maxx, world.maxy, max(map_z)), locate(1, 1, min(map_z)))
	lightupper = block(locate(world.maxx, world.maxy, max(map_z)), locate(1, 1, min(map_z)))
	for(var/atom/A as anything in lightmain)
		if(!istype(A.loc, /area/lovecraft/main_level) || A.density || istype(A.loc, /area/lovecraft/below_level))
			lightmain -= A
	for(var/atom/A as anything in lightupper)
		if(!istype(A.loc, /area/lovecraft/upper_level) || A.density || istype(A.loc, /area/lovecraft/below_level) || istype(A.loc, /area/lovecraft/main_level))
			lightupper -= A
	update_daynight()

/obj/overmap/visitable/sector/lovecraft/proc/update_daynight(light = 0.7, light_color_m = "#65856f")
	for(var/turf/T as anything in lightmain)
		T.set_light(1, light, l_color = light_color_m)
	for(var/turf/T as anything in lightupper)
		T.set_light(1, light, l_color = light_color_m)

/datum/map_template/ruin/away_site/lovecraft
	name = "NOTHING FOR NOW"
	id = "awaysite_lovecraft"
	spawn_cost = INFINITY
	player_cost = 2
	description = "NOTHING FOR NOW."
	prefix = "mods/_fd/_maps/small_exoplanet_1/map/"
	suffixes = list("lovecraft.dmm")
	area_usage_test_exempted_root_areas = list(/area/lovecraft/)
	apc_test_exempt_areas = list(
		/area/lovecraft/ = NO_SCRUBBER|NO_VENT|NO_APC
	)

/area/lovecraft
	var/add_overlay = FALSE

/area/lovecraft/indoors/main
	base_turf = /turf/simulated/floor/exoplanet/grim_dirt

/area/lovecraft/indoors/main/adm
	name = "Innsmouth Admiralty (MAIN)"

/area/lovecraft/indoors/second
	base_turf = /turf/simulated/open

/area/lovecraft/main_level
	name = "NOTHING FOR NOW (MAIN)"
	dynamic_lighting = 1
	add_overlay = TRUE
	base_turf = /turf/simulated/open

/area/lovecraft/main_level/Entered(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.overlay_fullscreen("rain", /obj/screen/fullscreen/light_rain)
		L.overlay_fullscreen("mist", /obj/screen/fullscreen/mist)

/area/lovecraft/main_level/Exited(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.clear_fullscreen("rain")
		L.clear_fullscreen("mist")

/area/lovecraft/upper_level
	name = "NOTHING FOR NOW (ABOVE)"
	dynamic_lighting = 1
	add_overlay = TRUE
	base_turf = /turf/simulated/open

/area/lovecraft/upper_level/Entered(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.overlay_fullscreen("rain", /obj/screen/fullscreen/light_rain)
		L.overlay_fullscreen("mist", /obj/screen/fullscreen/mist)

/area/lovecraft/upper_level/Exited(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.clear_fullscreen("rain")
		L.clear_fullscreen("mist")

/area/lovecraft/below_level
	name = "NOTHING FOR NOW (BELOW)"
	dynamic_lighting = 1
	add_overlay = TRUE
	base_turf = /turf/simulated/ocean

/area/lovecraft/below_level/Entered(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.overlay_fullscreen("underwater", /obj/screen/fullscreen/underwater)

/area/lovecraft/below_level/Exited(mob/living/L)
	..()
	if(istype(L) && add_overlay)
		L.clear_fullscreen("underwater")
