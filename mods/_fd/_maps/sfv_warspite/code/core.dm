/obj/structure/fake_zlvl
	name = "open space"
	density = TRUE
	anchored = TRUE
	opacity = FALSE

	icon = 'mods/_fd/_maps/sfv_warspite/icons/shadow.dmi'
	icon_state = "shadow"
	layer = ABOVE_HUMAN_LAYER

/datum/map_template/ruin/away_site/sfv_warspite
	name = "SFV Warspite"
	id = "awaysite_sfv_warspite"
	description = "Flagman of Vice-Admiral of Third Fleet"
	mappaths = list("mods/_fd/_maps/sfv_warspite/warspite.dmm")
	area_usage_test_exempted_root_areas = list(/area/warspite)
	spawn_cost = 1000
	player_cost = 4
	shuttles_to_initialise = list(
		/datum/shuttle/autodock/overmap/sultan,
		/datum/shuttle/autodock/overmap/lifepod,
		/datum/shuttle/autodock/overmap/lifepod/two,
		/datum/shuttle/autodock/overmap/lifepod/three,
		/datum/shuttle/autodock/overmap/lifepod/four,
		/datum/shuttle/autodock/overmap/lifepod/five,
		/datum/shuttle/autodock/overmap/lifepod/six,
		/datum/shuttle/autodock/ferry/warspite/from_bridge_to_hangar,
		/datum/shuttle/autodock/ferry/warspite/from_dorms_to_bridge
	)

/obj/overmap/visitable/ship/sfv_warspite
	name = "SFV Warspite"
	desc = "A slow, but with a sharp bite, Resolution-Class flagship, that broadcasting SCG Fleet codes \"SFV Warspite, FLT-3-FLG-1\"."
// \"SFV Warspite, FLEET-THIRD-FLAGgroup-FIRST\"."
	fore_dir = NORTH
	vessel_mass = 1000000
	burn_delay = 2 MINUTES
	base_sensor_visibility = 65
	icon = 'maps/event/placeholders/scg-64.dmi'
	icon_state = "ec-komarov"
	color = "#0751f3"
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE
	known_ships = list(
		/obj/overmap/visitable/ship/landable/sultan,
		/obj/overmap/visitable/ship/landable/lifepod,
		/obj/overmap/visitable/ship/landable/lifepod/two,
		/obj/overmap/visitable/ship/landable/lifepod/three,
		/obj/overmap/visitable/ship/landable/lifepod/four,
		/obj/overmap/visitable/ship/landable/lifepod/five,
		/obj/overmap/visitable/ship/landable/lifepod/six
	)
	pixel_x = -16
	pixel_y = -10
/*	initial_restricted_waypoints = list(
		"Sultan Landing Zone" = list("nav_sultan_start"),
		"Lifepod One Landing Zone" = list("nav_lifepod_one_start"),
		"Lifepod Two Landing Zone" = list("nav_lifepod_two_start"),
		"Lifepod Three Landing Zone" = list("nav_lifepod_three_start"),
		"Lifepod Four Landing Zone" = list("nav_lifepod_four_start"),
		"Lifepod Five Landing Zone" = list("nav_lifepod_five_start"),
		"Lifepod Six Landing Zone" = list("nav_lifepod_six_start")
	)
*/

/area/warspite
	name = "Warspite"
	icon_state = "yellow"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/warspite/bridge
	name = "Warspite - Bridge"

/area/warspite/hallway
	name = "Warspite - Bridge Hallway"
	icon_state = "yellow"

/area/warspite/conference
	name = "Warspite - Conference Room"

// Hangar \\

/area/warspite/hangar
	name = "Warspite - Hangar"
	icon_state = "green"

/area/warspite/hangar/hallway
	name = "Warspite - Hangar Hallway"

/area/warspite/hangar/lifepod
	name = "Warspite - Lifepod West"

/area/warspite/hangar/lifepod/east
	name = "Warspite - Lifepod East"

/area/warspite/hangar/ladder
	name = "Warspite - Hangar Ladder"

/area/warspite/hangar/engi
	name = "Warspite - Substance"

// BRIG \\

/area/warspite/brig
	name = "Warspite - Main room"
	icon_state = "red"

/area/warspite/brig/barrack
	name = "Warspite - Barracks"

/area/warspite/brig/kitchen
	name = "Warspite - Kitchen"

/area/warspite/brig/fitness
	name = "Warspite - Fitness"

/area/warspite/brig/head
	name = "Warspite - Head"

// Engi \\

/area/warspite/engibay
	name = "Warspite - EngiBay"
	icon_state = "yellow"

/area/warspite/engibay/hallway
	name = "Warspite - EngiBay Hallway"

/area/warspite/engibay/control
	name = "Warspite - ControlRoom"

/area/warspite/engibay/ladder
	name = "Warspite - Ladders to Bridge"

/area/warspite/techrooms
	name = "Warspite - Maintence"

/turf/unsimulated/floor/plating/void
	color = COLOR_BLACK
	density = 1

// ELEVATOR

/area/wayspite/lift
	name = "Warspite | Elevator - Bridge2Hangar"
	requires_power = FALSE

/area/wayspite/lift/engi
	name = "Warspite | Elevator - Bridge2Engi"

/obj/machinery/computer/shuttle_control/lift/warspite/from_bridge_to_hangar
	name = "Bridge to Hangar"
	shuttle_tag = "Bridge to Hangar"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = FALSE

/datum/shuttle/autodock/ferry/warspite/from_bridge_to_hangar
	name = "Bridge to Hangar"
	shuttle_area = /area/wayspite/lift
	warmup_time = 3
	waypoint_station = "nav_warspite_bridge_hangar"
	waypoint_offsite = "nav_warspite_hangar_bridge"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE

/obj/shuttle_landmark/lift/warspite/from_bridge_to_hangar
	name = "Bridge Deck"
	landmark_tag = "nav_warspite_bridge_hangar"
	base_area = /area/warspite/hallway
	base_turf = /turf/unsimulated/floor/plating/void

/obj/shuttle_landmark/lift/warspite/from_hangar_to_bridge
	name = "Hangar Deck"
	landmark_tag = "nav_warspite_hangar_bridge"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/warspite/hangar
	base_turf = /turf/simulated/floor/plating

/obj/machinery/computer/shuttle_control/lift/warspite/from_dorms_to_bridge
	name = "Dorms to Bridge"
	shuttle_tag = "Dorms to Bridge"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = FALSE

/datum/shuttle/autodock/ferry/warspite/from_dorms_to_bridge
	name = "Dorms to Bridge"
	shuttle_area = /area/wayspite/lift/engi
	warmup_time = 3
	waypoint_station = "nav_warspite_dorms_bridge"
	waypoint_offsite = "nav_warspite_bridge_dorms"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE

/obj/shuttle_landmark/lift/warspite/from_dorms_to_bridge
	name = "Dorms Deck"
	landmark_tag = "nav_warspite_dorms_bridge"
	base_area = /area/warspite/engibay
	base_turf = /turf/simulated/floor/plating

/obj/shuttle_landmark/lift/warspite/from_bridge_to_dorms
	name = "Bridge Deck"
	landmark_tag = "nav_warspite_bridge_dorms"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/warspite/hallway
	base_turf = /turf/unsimulated/floor/plating/void

//
