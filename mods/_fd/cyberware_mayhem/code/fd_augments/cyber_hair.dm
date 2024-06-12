/obj/item/organ/internal/augment/active/cyber_hair
	name = "synthetic hair extensions"
	action_button_name = "Change shape"
	augment_slots = AUGMENT_HEAD
	icon = 'mods/_fd/cyberware_mayhem/icons/tool_upgrades.dmi'
	icon_state = "plasmablock"
	default_action_type = /datum/action/item_action/organ/augment/fd
	desc = "An flexible synthetic fabric, able to simulate various haircut shapes and even colors."
	augment_flags = AUGMENT_BIOLOGICAL | AUGMENT_MECHANICAL
	origin_tech = list(TECH_DATA = 2, TECH_BIO = 2)

/obj/item/organ/internal/augment/active/cyber_hair/activate()
	. = ..()

	owner.playsound_local(null, 'sound/effects/fastbeep.ogg', 20, is_global = TRUE)
	owner.visible_message(SPAN_NOTICE("\The [owner]'s hair begins to rapidly shift in shape and length."))
	owner.change_appearance(APPEARANCE_ALL_HAIR, owner)
