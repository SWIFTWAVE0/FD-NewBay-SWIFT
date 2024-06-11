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
