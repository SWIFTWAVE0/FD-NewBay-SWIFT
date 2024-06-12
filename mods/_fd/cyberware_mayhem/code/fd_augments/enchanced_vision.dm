/obj/item/organ/internal/augment/active/enchanced_vision/zoom(mob/user, tileoffset = 14,viewsize = 9)
	if(!user.client)
		return
	if(zoom)
		return

	if(!user.loc?.MayZoom())
		return

	var/devicename = zoomdevicename || name
	var/mob/living/carbon/human/H = user

	if(user.incapacitated(INCAPACITATION_DISABLED))
		to_chat(user, SPAN_WARNING("You are unable to focus through the [devicename]."))
		return
	else if(!zoom && istype(H) && H.equipment_tint_total >= TINT_MODERATE)
		to_chat(user, SPAN_WARNING("Your eyewear gets in the way of looking through the [devicename]."))
		return

	var/viewoffset = WORLD_ICON_SIZE * tileoffset
	switch(user.dir)
		if (NORTH)
			user.client.pixel_x = 0
			user.client.pixel_y = viewoffset
		if (SOUTH)
			user.client.pixel_x = 0
			user.client.pixel_y = -viewoffset
		if (EAST)
			user.client.pixel_x = viewoffset
			user.client.pixel_y = 0
		if (WEST)
			user.client.pixel_x = -viewoffset
			user.client.pixel_y = 0

	if(user.hud_used.hud_shown)
		user.toggle_zoom_hud()	// If the user has already limited their HUD this avoids them having a HUD when they zoom in
	if(istype(H))
		H.handle_vision()

	user.client.view = viewsize
	zoom = 1

	GLOB.destroyed_event.register(src, src, TYPE_PROC_REF(/obj/item, unzoom))
	GLOB.moved_event.register(user, src, TYPE_PROC_REF(/obj/item, unzoom))
	GLOB.dir_set_event.register(user, src, TYPE_PROC_REF(/obj/item, unzoom))
	GLOB.item_unequipped_event.register(src, user, TYPE_PROC_REF(/mob/living, unzoom))

	GLOB.stat_set_event.register(user, src, TYPE_PROC_REF(/obj/item, unzoom))

	user.visible_message("\The [user] peers through [zoomdevicename ? "the [zoomdevicename] of [src]" : "[src]"].")

/obj/item/organ/internal/augment/active/enchanced_vision
	name = "vision enhanced retinas"
	desc = "Zeng Hu implants given to EMTs to assist with finding the injured. These eye implants allow one to see further and better than you normally could."
	icon_state = "booster"
	action_button_name = "Activate Vision Enhanced Retinas"
	augment_slots = AUGMENT_HEAD
	augment_flags = AUGMENT_BIOLOGICAL | AUGMENT_MECHANICAL

	icon = 'mods/_fd/cyberware_mayhem/icons/rig_modules.dmi'
	icon_state = "optics"
	default_action_type = /datum/action/item_action/organ/augment/fd
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2)

	var/id
	var/list/buffs = list(SKILL_WEAPONS = 2)
	var/list/injury_debuffs = list(SKILL_WEAPONS = -2)
	var/buffpath = /datum/skill_buff/augment
	var/active = FALSE
	var/debuffing = FALSE

/obj/item/organ/internal/augment/active/enchanced_vision/Initialize()
	. = ..()
	id = "[/obj/item/organ/internal/augment/active/enchanced_vision]_[sequential_id(/obj/item/organ/internal/augment/active/enchanced_vision)]"

/obj/item/organ/internal/augment/active/enchanced_vision/activate()
	. = ..()

	zoom(owner, 7, 7)
	owner.visible_message(
		zoom ? "<b>[owner]</b>'s pupils narrow..." : "<b>[owner]</b>'s pupils return to normal.",
		range = 3
	)

	if(active)
		debuffing = FALSE
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

/obj/item/organ/internal/augment/active/enchanced_vision/proc/debuff()
	if (!length(injury_debuffs))
		return FALSE
	for (var/datum/skill_buff/augment/D as anything in owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(injury_debuffs)
		debuffing = TRUE
		return TRUE
	return FALSE

/obj/item/organ/internal/augment/active/enchanced_vision/proc/buff()
	if (!length(buffs))
		return FALSE
	for (var/datum/skill_buff/augment/D as anything in owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(buffs)
		debuffing = FALSE
		return TRUE
	return FALSE

/obj/item/organ/internal/augment/active/enchanced_vision/Process()
	..()
	if (!owner)
		return
	if (is_broken())
		var/obj/item/organ/internal/eyes/E = owner.internal_organs_by_name[BP_EYES]
		if (!E)
			return
		E.damage += 5
	if (!debuffing)
		if (is_broken())
			debuff()
	else if (!is_broken())
		buff()
