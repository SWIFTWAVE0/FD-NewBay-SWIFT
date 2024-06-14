/obj/item/organ/internal/augment/active/flash_eyes
	name = "integrated h-eye-lighting module"
	action_button_name = "Turn light"
	augment_slots = AUGMENT_HEAD
	icon = 'mods/_fd/cyberware_mayhem/icons/rig_modules.dmi'
	icon_state = "thermal"
	default_action_type = /datum/action/item_action/organ/augment/fd
	desc = "An pair of strong eye-lamps with focused beam of light."
	augment_flags = AUGMENT_BIOLOGICAL | AUGMENT_MECHANICAL
	origin_tech = list(TECH_DATA = 2, TECH_BIO = 2)
	var/lights_on = FALSE

/obj/item/organ/internal/augment/active/flash_eyes/activate()
	. = ..()

	lights_on = !lights_on
	if (lights_on)
		set_light(8, 0.7, l_color = "#f7b439", angle = LIGHT_NARROW)
	else
		set_light(0)
