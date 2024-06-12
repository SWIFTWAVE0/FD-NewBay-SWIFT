/obj/item/organ/internal/augment/active/agility
	name = "agility enhancer"
	desc = "Special muscle augment, giving owner an ability to jump further and run faster."
	icon_state = "booster"
	action_button_name = "Speed Up"
	augment_slots = AUGMENT_LEG
	augment_flags = AUGMENT_BIOLOGICAL | AUGMENT_MECHANICAL

	icon = 'mods/_fd/cyberware_mayhem/icons/tool_upgrades.dmi'
	icon_state = "hydraulic"
	default_action_type = /datum/action/item_action/organ/augment/fd
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2)

	var/id
	var/list/buffs = list(SKILL_HAULING = 2, SKILL_EVA = 2)
	var/list/injury_debuffs = list(SKILL_HAULING = -3, SKILL_EVA = -3)
	var/buffpath = /datum/skill_buff/augment
	var/active = FALSE
	var/debuffing = FALSE

/obj/item/organ/internal/augment/active/agility/Initialize()
	. = ..()
	id = "[/obj/item/organ/internal/augment/active/agility]_[sequential_id(/obj/item/organ/internal/augment/active/agility)]"

/obj/item/organ/internal/augment/active/agility/activate()
	. = ..()

	owner.playsound_local(null, 'sound/effects/fastbeep.ogg', 20, is_global = TRUE)
	owner.pass_flags ^= PASS_FLAG_TABLE
	owner.species.standing_jump_range += 2
	owner.species.slowdown = -0.8

	if(active)
		debuffing = FALSE
		owner.species.standing_jump_range -= 2
		owner.species.slowdown = 0
		for (var/datum/skill_buff/augment/D as anything in owner.fetch_buffs_of_type(buffpath, 0))
			if (D.id != id)
				continue
			D.remove()
			return

	if (length(buffs))
		var/datum/skill_buff/augment/A
		A = owner.buff_skill(buffs, 0, buffpath)
		if (A && istype(A))
			active = TRUE
			A.id = id

/obj/item/organ/internal/augment/active/agility/proc/debuff()
	if (!length(injury_debuffs))
		return FALSE
	for (var/datum/skill_buff/augment/D as anything in owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(injury_debuffs)
		debuffing = TRUE
		return TRUE
	return FALSE

/obj/item/organ/internal/augment/active/agility/proc/buff()
	if (!length(buffs))
		return FALSE
	for (var/datum/skill_buff/augment/D as anything in owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(buffs)
		debuffing = FALSE
		return TRUE
	return FALSE

/obj/item/organ/internal/augment/active/agility/Process()
	..()
	if (!owner)
		return
	if (!debuffing)
		if (is_broken())
			debuff()
	else if (!is_broken())
		buff()
