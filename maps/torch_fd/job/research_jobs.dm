/datum/job/senior_scientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI

	total_positions = 0
	spawn_positions = 0
	supervisors = "the Chief Science Officer"
	selection_color = "#633d63"
	economic_power = 12
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 50
	alt_titles = list(
		"Research Supervisor")
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research/senior_scientist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)

	access = list(
		access_tox, access_tox_storage, access_maint_tunnels, access_research, access_mining_office,
		access_mining_station, access_xenobiology, access_xenoarch, access_nanotrasen, access_solgov_crew,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_control,
		access_petrov_maint, access_torch_fax, access_radio_sci, access_radio_exp, access_research_storage
	)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_TRAINED,
	                    SKILL_SCIENCE     = SKILL_TRAINED)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20
	possible_goals = list(/datum/goal/achievement/notslimefodder)

/datum/job/scientist
	title = "Scientist"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Science Officer"
	economic_power = 10
	minimum_character_age = 0
	ideal_character_age = 45
	minimal_player_age = 0
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist"
	)

	max_skill = list(
		SKILL_BUREAUCRACY = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_PILOT = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_COMBAT = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL = SKILL_MAX,
		SKILL_ATMOS = SKILL_MAX,
		SKILL_ENGINES = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_MEDICAL = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/civ/contractor = /singleton/hierarchy/outfit/job/torch/passenger/research/scientist,
		/datum/mil_rank/sol/scientist = /singleton/hierarchy/outfit/job/torch/passenger/research/scientist/solgov,
		/datum/mil_rank/civ/civ
	)

	access = list(
		access_tox, access_tox_storage, access_research, access_petrov, access_petrov_helm,
		access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
		access_xenoarch, access_nanotrasen, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_control, access_torch_fax,
		access_petrov_maint, access_radio_sci, access_radio_exp, access_research_storage
	)
	skill_points = 52 // 30
	possible_goals = list(/datum/goal/achievement/notslimefodder)

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI
	total_positions = 0
	spawn_positions = 0
	supervisors = "the Chief Science Officer and science personnel"
	selection_color = "#633d63"
	economic_power = 3
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 30
	alt_titles = list(
		"Testing Assistant",
		"Intern",
		"Clerk",
		"Field Assistant")

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/civ/contractor = /singleton/hierarchy/outfit/job/torch/passenger/research/assist,
		/datum/mil_rank/sol/scientist = /singleton/hierarchy/outfit/job/torch/passenger/research/assist/solgov
	)
	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(
		access_tox, access_tox_storage, access_research, access_petrov,
		access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
		access_xenoarch, access_nanotrasen, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_control,
		access_radio_sci, access_radio_exp, access_research_storage
	)
	possible_goals = list(/datum/goal/achievement/notslimefodder)

/datum/job/research_guard
	title = "Research Guard"
	department = "Science"
	department_flag = SCI
	total_positions = 0
	spawn_positions = 0
	supervisors = "the Chief Science Officer"
	selection_color = "#473d63"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 26)
	outfit_type = /singleton/hierarchy/outfit/job/torch/passenger/research_guard
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/passenger/research_guard/ec
	)

	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5
	)
	min_skill = list(SKILL_BUREAUCRACY	= SKILL_TRAINED,
						SKILL_EVA		= SKILL_BASIC,
						SKILL_COMBAT	= SKILL_BASIC,
						SKILL_WEAPONS	= SKILL_TRAINED
						)

	max_skill = list(	SKILL_COMBAT	= SKILL_EXPERIENCED,
						SKILL_WEAPONS	= SKILL_EXPERIENCED)
	skill_points = 20

	access = list(
		access_research_security, access_tox, access_tox_storage, access_maint_tunnels, access_research, access_xenobiology, access_xenoarch, access_nanotrasen, access_solgov_crew,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_maint, access_radio_sci
	)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor)

/datum/job/research_guard/get_description_blurb()
	return "You are a security guard from the Organization of the Expeditionary Corps, which must protect the scientific department and its employees from various threats. Eat donuts, call scientists \"eggheads\"."
