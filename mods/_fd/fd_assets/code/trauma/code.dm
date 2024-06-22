/obj/item/clothing/head/armor/faceshield/paramedic
	name = "Moebius paramedic helmet"
	desc = "Seven minutes or a refund."
	icon_state = "trauma_team"
	item_state = "trauma_team"
	flags_inv = HIDEEARS|BLOCKHAIR
	item_flags = BLOCK_GAS_SMOKE_EFFECT|AIRTIGHT
	matter = list(
		MATERIAL_PLASTEEL = 10,
		MATERIAL_GLASS = 5,
		MATERIAL_PLASTIC = 5,
		MATERIAL_PLATINUM = 2
		)
	armor_up = list(
		melee = 5,
		bullet = 5,
		energy = 5,
		bomb = 20,
		bio = 100,
		rad = 50
		)
	armor_down = list(
		melee = 7,
		bullet = 10,
		energy = 10,
		bomb = 50,
		bio = 100,
		rad = 50)
	up = TRUE
	spawn_blacklisted = TRUE
	style = STYLE_HIGH
	tint_down = TINT_NONE
	var/speaker_enabled = TRUE
	var/scan_scheduled = FALSE
	var/scan_interval = 15 SECONDS
	var/repeat_report_after = 60 SECONDS
	var/list/crewmembers_recently_reported = list()


/obj/item/clothing/head/armor/faceshield/paramedic/equipped(mob/M)
	. = ..()
	schedule_scan()


/obj/item/clothing/head/armor/faceshield/paramedic/proc/schedule_scan()
	if(scan_scheduled)
		return

	if(!speaker_enabled)
		return

	scan_scheduled = TRUE
	spawn(scan_interval)
		if(QDELETED(src))
			return
		scan_scheduled = FALSE
		report_health_alerts()


/obj/item/clothing/head/armor/faceshield/paramedic/proc/schedule_memory_cleanup(entry)
	spawn(repeat_report_after)
		if(QDELETED(src))
			return
		crewmembers_recently_reported.Remove(entry)


/obj/item/clothing/head/armor/faceshield/paramedic/proc/report_health_alerts()
	if(!speaker_enabled)
		return

	if(!ishuman(loc))
		return


	var/mob/living/carbon/human/user = loc

	var/list/crewmembers = list()
	var/list/z_levels_to_scan = list(1, 2, 3, 4, 5)

	for(var/z_level in z_levels_to_scan)
		crewmembers += crew_repository.health_data(z_level)

	if(crewmembers.len)
		for(var/i = 1, i <= crewmembers.len, i++)
			var/list/entry = crewmembers[i]
			if(entry["alert"] && !entry["muted"])
				if(entry["name"] in crewmembers_recently_reported)
					continue
				crewmembers_recently_reported += entry["name"]
				schedule_memory_cleanup(entry["name"])
				to_chat(user, SPAN_WARNING("[src] beeps: '[entry["name"]]'s on-suit sensors broadcast an emergency signal. Access monitoring software for details.'"))

	schedule_scan()


/obj/item/clothing/head/armor/faceshield/paramedic/AltClick()
	toogle_speaker()


/obj/item/clothing/head/armor/faceshield/paramedic/verb/toogle_speaker()
	set name = "Toogle helmet's speaker"
	set category = "Object"
	set src in usr

	if(speaker_enabled)
		to_chat(usr, SPAN_WARNING("[src] beeps: 'Notifications disabled.'"))
		speaker_enabled = FALSE
	else
		to_chat(usr, SPAN_WARNING("[src] beeps: 'Notifications enabled.'"))
		speaker_enabled = TRUE
		report_health_alerts()
		schedule_scan()

//


/obj/item/clothing/suit/armor/paramedic
	name = "Moebius paramedic armor"
	desc = "Seven minutes or a refund."
	icon_state = "trauma_team"
	item_state = "trauma_team"
	matter = list(
		MATERIAL_PLASTEEL = 10,
		MATERIAL_STEEL = 5,
		MATERIAL_PLASTIC = 5,
		MATERIAL_PLATINUM = 3,
		MATERIAL_URANIUM = 4,
		MATERIAL_SILVER = 2
		)
	armor = list(
		melee = 7,
		bullet = 10,
		energy = 10,
		bomb = 20,
		bio = 100,
		rad = 50
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	style_coverage = COVERS_TORSO|COVERS_UPPER_ARMS|COVERS_UPPER_LEGS
	spawn_blacklisted = TRUE
	style = STYLE_HIGH
	action_button_name = "Toggle Acceleration"
	var/speed_boost_ready = TRUE
	var/speed_boost_active = FALSE
	var/speed_boost_power = -0.5
	var/speed_boost_length = 30 SECONDS
	var/speed_boost_cooldown = 5 MINUTES
	var/matching_helmet = /obj/item/clothing/head/armor/faceshield/paramedic
	slowdown = 0 // No slowdown in exchange for worse accuracy


/obj/item/clothing/suit/armor/paramedic/ui_action_click(mob/living/user, action_name)
	if(..())
		return TRUE

	trigger_speed_boost(user)


/obj/item/clothing/suit/armor/paramedic/proc/trigger_speed_boost(mob/living/carbon/human/user)
	if(!istype(user))
		return

	if(!speed_boost_ready)
		if(user.head && istype(user.head, matching_helmet))
			if(speed_boost_active)
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol active.'"))
			else
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol failture. Insufficient capacitor charge.'"))
		return

	speed_boost_ready = FALSE
	speed_boost_active = TRUE
	slowdown = speed_boost_power

	if(user.head && istype(user.head, matching_helmet))
		to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol initiated.'"))

	spawn(speed_boost_length)
		if(QDELETED(src))
			return
		slowdown = initial(slowdown)
		speed_boost_active = FALSE
		if(user.head && istype(user.head, matching_helmet))
			to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Capacitors discharged. Acceleration protocol aborted.'"))

		spawn(speed_boost_cooldown)
			if(QDELETED(src))
				return
			speed_boost_ready = TRUE
			if(user.head && istype(user.head, matching_helmet))
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Capacitors have been recharged.'"))
