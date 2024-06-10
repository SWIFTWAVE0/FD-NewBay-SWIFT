/datum/gear/augment
	sort_category = "Augments"
	category = /datum/gear/augment

/datum/gear/augment/chest
	display_name = "Chest Augments"
	description = "Chest cybernetic augments with various major in-game effects."
	path = /obj/item/organ/internal/augment
	cost = 2

/datum/gear/augment/chest/New()
	..()
	var/list/options = list()
	options["internal air system"] = /obj/item/organ/internal/augment/active/internal_air_system
	options["leukocyte breeder"] = /obj/item/organ/internal/augment/active/leukocyte_breeder
	options["nerve dampeners"] = /obj/item/organ/internal/augment/active/nerve_dampeners
	gear_tweaks += new /datum/gear_tweak/path (options)

/datum/gear/augment/head
	display_name = "Head Augments"
	description = "Head cybernetic augments with various major in-game effects."
	path = /obj/item/organ/internal/augment
	cost = 4

/datum/gear/augment/head/New()
	..()
	var/list/options = list()
	options["synapse interceptor"] = /obj/item/organ/internal/augment/boost/reflex
	options["gunnery booster"] = /obj/item/organ/internal/augment/boost/shooting
	options["adaptive binoculars"] = /obj/item/organ/internal/augment/active/item/adaptive_binoculars/hidden
	options["glare dampeners"] = /obj/item/organ/internal/augment/active/item/glare_dampeners
	options["integrated health HUD"] = /obj/item/organ/internal/augment/active/hud/health
	options["integrated security HUD"] = /obj/item/organ/internal/augment/active/hud/security
	options["integrated filth HUD"] = /obj/item/organ/internal/augment/active/hud/janitor
	options["integrated sciHUD"] = /obj/item/organ/internal/augment/active/hud/science
	options["iatric monitor"] = /obj/item/organ/internal/augment/active/iatric_monitor
	gear_tweaks += new /datum/gear_tweak/path (options)

/datum/gear/augment/r_arm
	display_name = "Primary Arm Augments"
	description = "In-hand cybernetic augments with various major in-game effects."
	path = /obj/item/organ/internal/augment
	cost = 4

/datum/gear/augment/r_arm/New()
	..()
	var/list/options = list()
	options["cyberclaws"] = /obj/item/organ/internal/augment/active/item/wolverine
	options["concealed wrist blade"] = /obj/item/organ/internal/augment/active/item/wrist_blade
	options["wrist blade"] = /obj/item/material/armblade/wrist
	options["integrated circuit frame"] = /obj/item/organ/internal/augment/active/item/circuit
	options["pop-out shotgun"] = /obj/item/organ/internal/augment/active/item/popout_shotgun
	options["pneumatic power gauntlet"] = /obj/item/organ/internal/augment/active/item/powerfist
	options["engineering toolset"] = /obj/item/organ/internal/augment/active/polytool/engineer
	options["surgical toolset"] = /obj/item/organ/internal/augment/active/polytool/surgical
	gear_tweaks += new /datum/gear_tweak/path (options)

/datum/gear/augment/l_arm
	display_name = "Secondary Arm Augments"
	description = "In-hand cybernetic augments with various major in-game effects."
	path = /obj/item/organ/internal/augment
	cost = 4

/datum/gear/augment/l_arm/New()
	..()
	var/list/options = list()
	options["cyberclaws"] = /obj/item/organ/internal/augment/active/item/wolverine
	options["concealed wrist blade"] = /obj/item/organ/internal/augment/active/item/wrist_blade
	options["wrist blade"] = /obj/item/material/armblade/wrist
	options["integrated circuit frame"] = /obj/item/organ/internal/augment/active/item/circuit
	options["pop-out shotgun"] = /obj/item/organ/internal/augment/active/item/popout_shotgun
	options["pneumatic power gauntlet"] = /obj/item/organ/internal/augment/active/item/powerfist
	options["engineering toolset"] = /obj/item/organ/internal/augment/active/polytool/engineer
	options["surgical toolset"] = /obj/item/organ/internal/augment/active/polytool/surgical
	gear_tweaks += new /datum/gear_tweak/path (options)

//COMMENTED BY FD//
/*
/datum/gear/augment/armor_minor
	display_name = "Armor Augments (Minor)"
	description = "Armor flavor augments with little or no in-game effects."
	path = /obj/item/organ/internal/augment


/datum/gear/augment/armor_minor/New()
	..()
	var/list/options = list()
	options["skeletal bracing"] = /obj/item/organ/internal/augment/skeletal_bracing
	options["ultraviolet shielding"] = /obj/item/organ/internal/augment/ultraviolet_shielding
	gear_tweaks += new /datum/gear_tweak/path (options)


/datum/gear/augment/chest_minor
	display_name = "Chest Augments (Minor)"
	description = "Chest flavor augments with little or no in-game effects."
	path = /obj/item/organ/internal/augment


/datum/gear/augment/chest_minor/New()
	..()
	var/list/options = list()
	options["emergency battery"] = /obj/item/organ/internal/augment/emergency_battery
	options["leukocyte breeder"] = /obj/item/organ/internal/augment/active/leukocyte_breeder
	gear_tweaks += new /datum/gear_tweak/path (options)


/datum/gear/augment/groin_minor
	display_name = "Lower Body Augments (Minor)"
	description = "Lower Body flavor augments with little or no in-game effects."
	path = /obj/item/organ/internal/augment


/datum/gear/augment/groin_minor/New()
	..()
	var/list/options = list()
	options["recycler suite"] = /obj/item/organ/internal/augment/recycler_suite
	gear_tweaks += new /datum/gear_tweak/path (options)


/datum/gear/augment/head_minor
	display_name = "Head Augments (Minor)"
	description = "Head flavor augments with little or no in-game effects."
	path = /obj/item/organ/internal/augment


/datum/gear/augment/head_minor/New()
	..()
	var/list/options = list()
	options["circadian conditioner"] = /obj/item/organ/internal/augment/circadian_conditioner
	options["codex access chip"] = /obj/item/organ/internal/augment/codex_access
	options["data chip"] = /obj/item/organ/internal/augment/data_chip
	options["genetic backup"] = /obj/item/organ/internal/augment/genetic_backup
	options["neurostimulator implant"] = /obj/item/organ/internal/augment/neurostimulator_implant
	options["pain assistant"] = /obj/item/organ/internal/augment/pain_assistant
	gear_tweaks += new /datum/gear_tweak/path (options)


/datum/gear/augment/head_vision
	display_name = "Head Augments (Vision)"
	description = "Head augments with vision effects."
	path = /obj/item/organ/internal/augment
	flags = GEAR_HAS_NO_CUSTOMIZATION


/datum/gear/augment/head_vision/New()
	..()
	var/list/options = list()
	options["corrective lenses"] = /obj/item/organ/internal/augment/active/item/corrective_lenses
	options["glare dampeners"] = /obj/item/organ/internal/augment/active/item/glare_dampeners
	options["integrated health HUD"] = /obj/item/organ/internal/augment/active/hud/health
	options["integrated security HUD"] = /obj/item/organ/internal/augment/active/hud/security
	options["integrated filth HUD"] = /obj/item/organ/internal/augment/active/hud/janitor
	options["integrated sciHUD"] = /obj/item/organ/internal/augment/active/hud/science
	gear_tweaks += new /datum/gear_tweak/path (options)
*/
//COMMENTED BY FD//
