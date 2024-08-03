// Submap datum and archetype.
/singleton/submap_archetype/khizriel
	descriptor = "Suspicious looking private vessel"
	map = "Khizriel"
	crew_jobs = list(/datum/job/submap/khizriel)

/datum/job/submap/khizriel
	title = "Khizriel's crew"
	total_positions = 6
	spawn_positions = 6
	supervisors = "You obey orders of your Captain."
	info = "You are a lawless crew member of pirate's Vessel - Khizriel. You have no mercy, no remorse or fear. Only greed."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_RESOMI)
	is_semi_antagonist = TRUE
	outfit_type = /singleton/hierarchy/outfit/job/khizriel
	loadout_allowed = TRUE
	min_skill = list(
		SKILL_EVA = SKILL_TRAINED,
		SKILL_HAULING = SKILL_BASIC,
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_WEAPONS = SKILL_BASIC,
		SKILL_PILOT = SKILL_BASIC
	)

/singleton/hierarchy/outfit/job/khizriel
	name = "Khizriel Crewman"
	uniform = /obj/item/clothing/under/color/black
	l_ear = null
	l_pocket = /obj/item/device/flashlight/maglight
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda

/obj/submap_landmark/spawnpoint/khizriel
	name = "Khizriel's crew"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
