/obj/item/organ/internal/augment/active/timepiece
	name = "integrated timepiece"
	action_button_name = "Check time"
	augment_slots = AUGMENT_HAND
	icon = 'mods/_fd/cyberware_mayhem/icons/stock_parts.dmi'
	icon_state = "adv_scan_module"
	default_action_type = /datum/action/item_action/organ/augment/fd
	desc = "An compact timepiece integrated right into your hand."
	augment_flags = AUGMENT_BIOLOGICAL | AUGMENT_MECHANICAL
	origin_tech = list(TECH_DATA = 2, TECH_BIO = 2)

/obj/item/organ/internal/augment/active/timepiece/activate()
	. = ..()

	var/extra_days = round(station_time_in_ticks / (1 DAY)) DAYS
	var/timeofday = world.timeofday + extra_days

	owner.playsound_local(null, 'sound/effects/fastbeep.ogg', 20, is_global = TRUE)
	to_chat(owner, SPAN_NOTICE("Hello [owner], it is currently: [stationtime2text()] on the [time2text(timeofday, "DD")]\th of [time2text(timeofday, "Month")], [GLOB.using_map.game_year]. Have a lovely day."))
	owner.visible_message(SPAN_NOTICE("\The [owner]'s hand starts to change shapes, revealing an integrated hand watches."))
