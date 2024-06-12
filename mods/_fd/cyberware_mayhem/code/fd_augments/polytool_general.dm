/obj/item/organ/internal/augment/active/polytool_fd/general
	name = "general utility implant"
	action_button_name = "Deploy Utility Toolset"
	desc = "Special NanoTrasen multi-purposed augmentation, including various goods."
	icon_state = "teleporter"
	default_action_type = /datum/action/item_action/organ/augment/fd
	icon = 'mods/_fd/cyberware_mayhem/icons/rig_modules.dmi'
	paths = list(
		/obj/item/pen/multi/finger,
		/obj/item/hand_labeler/finger,
		/obj/item/paper_bin/finger,
		/obj/item/device/camera/finger,
		/obj/item/stamp/approved/finger,
		/obj/item/stamp/denied/finger,
		/obj/item/flame/lighter/zippo/finger
	)

/obj/item/pen/multi/finger
	canremove = FALSE

/obj/item/hand_labeler/finger
	item_state = "labeler1"
	canremove = FALSE

/obj/item/paper_bin/finger
	item_state = "paper_bin1"
	amount = 60
	canremove = FALSE

/obj/item/device/camera/finger
	item_state = "camera"
	pictures_max = 30
	pictures_left = 30
	canremove = FALSE

/obj/item/stamp/denied/finger
	item_state = "stamp-deny"
	canremove = FALSE

/obj/item/stamp/approved/finger
	name = "APPROVAL rubber stamp"
	item_state = "stamp-boss"
	icon_state = "stamp-boss"
	canremove = FALSE

/obj/item/flame/lighter/zippo/finger
	max_fuel = 80
	canremove = FALSE
