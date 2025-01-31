/obj/overmap/visitable/ship/tartakan
	name = "Huge space-station"
	desc = ""
	icon = 'mods/_fd/_maps/tartakan/icons/tartakan.dmi'
	icon_state = "tartakan"
	instant_contact = TRUE

	initial_generic_waypoints = list(
		"nav_tartakan_1",
		"nav_tartakan_2",
		"nav_tartakan_3"
	)

/obj/submap_landmark/joinable_submap/tartakan
	name = "event actor"
	archetype = /singleton/submap_archetype/tartakan

/singleton/submap_archetype/tartakan
	descriptor = "event actor"
	map = "tartakan station"
	crew_jobs = list(
		/datum/job/submap/tartakan/actor,
	)

/datum/job/submap/tartakan/actor
	title = "event actor"
	total_positions = -1
	supervisors = "-"
	info = "-"
	loadout_allowed = TRUE

/obj/submap_landmark/spawnpoint/tartakan/actor
	name = "event actor"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/map_template/ruin/away_site/tartakan
	name = "Tartakan station"
	id = "tartakan_station"
	description = ""
	prefix = "mods/_fd/_maps/tartakan/maps/"
	suffixes = list("tartakan.dmm")
	spawn_cost = 1
	player_cost = 2
	area_usage_test_exempted_root_areas = list(/area/ship/tartakan)

/obj/shuttle_landmark/tartakan/nav1
	name = "Tartakan Station - Guest Dock A"
	landmark_tag = "nav_tartakan_1"

/obj/shuttle_landmark/tartakan/nav2
	name = "Tartakan Station - Guest Dock B"
	landmark_tag = "nav_tartakan_1"

/area/ship/tartakan
	name = "\improper Tartakan Station"

/area/ship/tartakan/cargo_dorm
	name = "\improper Tartakan Station - Cargo Dorms"

/area/ship/tartakan/factory_dorm
	name = "\improper Tartakan Station - Factory Dorms"

/area/ship/tartakan/cargo_port_west
	name = "\improper Tartakan Station - Cargo Port A"

/area/ship/tartakan/cargo_port_north
	name = "\improper Tartakan Station - Cargo Port C"

/area/ship/tartakan/cargo_port_east
	name = "\improper Tartakan Station - Cargo Port B"

/area/ship/tartakan/cargo_port_south
	name = "\improper Tartakan Station - Cargo Port D"

/area/ship/tartakan/engineering_lower
	name = "\improper Tartakan Station - 2nd Deck Engineering"

/area/ship/tartakan/atmospherics
	name = "\improper Tartakan Station - 2nd Deck Atmospherics"

/area/ship/tartakan/cargo
	name = "\improper Tartakan Station - Cargo Compartment"

/area/ship/tartakan/factory
	name = "\improper Tartakan Station - Factory Compartment"

/area/ship/tartakan/zavod1
	name = "\improper Tartakan Station - Main Factory"

/area/ship/tartakan/zavod2
	name = "\improper Tartakan Station - Chem Factory"

/area/ship/tartakan/hall_lower
	name = "\improper Tartakan Station - 2nd Deck Hall"

/area/ship/tartakan/hall_higher
	name = "\improper Tartakan Station - 1st Deck Hall"

/area/ship/tartakan/engineering_higher
	name = "\improper Tartakan Station - 1st Deck Engineering"

/area/ship/tartakan/main_store
	name = "\improper Tartakan Station - Main Store"

/area/ship/tartakan/east_wing
	name = "\improper Tartakan Station - East Wing"

/area/ship/tartakan/west_wing
	name = "\improper Tartakan Station - West Wing"

/area/ship/tartakan/north_checkpoint
	name = "\improper Tartakan Station - Dock A Checkpoint"

/area/ship/tartakan/south_checkpoint
	name = "\improper Tartakan Station - Dock B Checkpoint"

/area/ship/tartakan/cryo
	name = "\improper Tartakan Station - Cryostasis Storage"

/area/ship/tartakan/store_one
	name = "\improper Tartakan Station - Store One"

/area/ship/tartakan/store_two
	name = "\improper Tartakan Station - Store Two"

/area/ship/tartakan/store_three
	name = "\improper Tartakan Station - Store Three"
