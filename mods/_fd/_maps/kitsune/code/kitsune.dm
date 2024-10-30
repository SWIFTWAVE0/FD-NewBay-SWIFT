/obj/overmap/visitable/ship/kitsune
	name = "SFMV Kitsune"
	desc = "Sensor array is detecting a small Sol Fleet vessel."
	color = "#005fed"
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 5000
	initial_restricted_waypoints = list(
		"Kitsune" = list("nav_kitsune_start")
	)

/obj/machinery/computer/shuttle_control/explore/hotaru
	name = "shuttle landing control console"
	shuttle_tag = "Hotaru"

/obj/overmap/visitable/ship/landable/hotaru
	name = "SFV Hotaru"
	desc = "Sensor array is detecting a tiny Sol Fleet vessel."
	shuttle = "Hotaru"
	fore_dir = EAST
	dir = EAST
	color = "#98a9fd"
	vessel_mass = 250
	vessel_size = SHIP_SIZE_TINY

/datum/map_template/ruin/away_site/kitsune
	name = "SFMV Kitsune"
	id = "kitsune"
	description = "Medium-sized SCG Fleet vessel with strictly medical purpose."
	prefix = "mods/_fd/_maps/kitsune/maps/"
	suffixes = list("kitsune.dmm")
	spawn_cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/hotaru)
	area_usage_test_exempted_root_areas = list(/area/kitsune/med_shuttle)
	initial_restricted_waypoints = list(
		"SFV Hotaru" = list("nav_hangar_hotaru")
	)

/datum/shuttle/autodock/overmap/hotaru
	name = "SFV Hotaru"
	move_time = 10
	shuttle_area = list(
		/area/kitsune/med_shuttle
	)
	current_location = "nav_kitsune_start"
	dock_target = "kitsune_ship_dock"
	range = 1
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS

/obj/shuttle_landmark/hotaru
	name = "Hotaru Hangar"
	landmark_tag = "nav_hangar_hotaru"
	base_area = /area/kitsune/hangar
	base_turf = /turf/simulated/floor/plating

/obj/submap_landmark/joinable_submap/kitsune
	name = "SFMV Kitsune"
	archetype = /singleton/submap_archetype/kitsune

/singleton/submap_archetype/kitsune
	descriptor = "SFMV Kitsune"
	map = "SFMV Kitsune"
	crew_jobs = list(
		/datum/job/submap/kitsune_captain,
		/datum/job/submap/kitsune_roboticist,
		/datum/job/submap/kitsune_pilot,
		/datum/job/submap/kitsune_exec,
		/datum/job/submap/kitsune_chief,
		/datum/job/submap/kitsune_crew
	)

/obj/submap_landmark/spawnpoint/kitsune_captain
	name = "Commanding Officer"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_roboticist
	name = "Roboticist"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_pilot
	name = "Pilot"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_chief
	name = "Chief"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_exec
	name = "Executive Officer"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_crew
	name = "Crewman"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/job/submap/kitsune_captain
	title = "Commanding Officer"
	department = "Command"
	department_flag = COM
	economic_power = 12
	total_positions = 1
	spawn_positions = 1
	supervisors = "SCG Admiralty"
	ideal_character_age = 35
	minimal_player_age = 0
	loadout_allowed = TRUE
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o5
	)
	access = list(access_captain,access_engine_equip,access_kitchen,access_pilot,access_medical)
	announced = FALSE
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_TRAINED,
	                    SKILL_PILOT	  = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_TRAINED)
	skill_points = 40

/datum/job/submap/kitsune_roboticist
	title = "Roboticist"
	supervisors = "Your husband"
	total_positions = 1
	spawn_positions = 1
	economic_power = 12
	minimal_player_age = 14
	minimum_character_age = 0
	ideal_character_age = 50
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)

	min_skill = list(   SKILL_CONSTRUCTION = SKILL_TRAINED,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_TRAINED,
	                    SKILL_DEVICES     = SKILL_TRAINED,
	                    SKILL_SCIENCE     = SKILL_TRAINED)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
                        SKILL_ATMOS       = SKILL_MAX,
	                    SKILL_ELECTRICAL  = SKILL_MAX,
                        SKILL_ENGINES     = SKILL_MAX,
                        SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 40

	access = list(access_engine_equip,access_kitchen,access_pilot,access_medical)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/submap/kitsune_pilot
	title = "Pilot"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "Your Wife"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 8
	ideal_character_age = 24
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_MAX)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
		                SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 54


	access = list(access_engine_equip,access_kitchen,access_pilot,access_medical)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/submap/kitsune_exec
	title = "Executive Officer"
	supervisors = "the Commanding Officer"
	department = "Command"
	department_flag = COM
	minimal_player_age = 0
	economic_power = 14
	minimum_character_age = 0
	ideal_character_age = 45
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/command/XO/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_TRAINED,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 36

	access = list(access_captain,access_engine_equip,access_kitchen,access_pilot,access_medical)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


/datum/job/submap/kitsune_chief
	title = "Chief"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = 0
	ideal_character_age = 35
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e6
	)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_TRAINED,
		SKILL_COOKING = SKILL_TRAINED,
		SKILL_BOTANY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	skill_points = 36
	access = list(access_captain,access_engine_equip,access_kitchen,access_pilot,access_medical)

/datum/job/submap/kitsune_crew
	title = "Crewman"
	department = "Service"
	department_flag = SRV
	total_positions = 16
	spawn_positions = 16
	supervisors = "the Commanding Officer"
	minimum_character_age = 0
	ideal_character_age = 20
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/crewman
	skill_points = 32
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/fleet,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)

	access = list(access_medical)
