/obj/item/clothing/accessory/scga_rank
	abstract_type = /obj/item/clothing/accessory/scga_rank
	name = "base rank insignia, SCGA"
	desc = "You should not see this."
	icon = 'packs/factions/scga/ranks.dmi'
	accessory_icons = list(
		slot_w_uniform_str = 'packs/factions/scga/ranks.dmi',
		slot_wear_suit_str = 'packs/factions/scga/ranks.dmi'
	)
	icon_state = null
	overlay_state = "error"
	on_rolled_down = ACCESSORY_ROLLED_NONE
	w_class = ITEM_SIZE_TINY
	slot = ACCESSORY_SLOT_RANK
	accessory_flags = ACCESSORY_REMOVABLE | ACCESSORY_HIGH_VISIBILITY
	gender = PLURAL
	sprite_sheets = list(
		SPECIES_UNATHI = 'packs/factions/scga/species/ranks_unathi.dmi'
	)


/obj/item/clothing/accessory/scga_rank/get_fibers()
	return null


/obj/item/clothing/accessory/scga_rank/e1
	name = "ranks (E-1 recruit)"
	desc = "Collar pins denoting the SCGA E-1 rank of Recruit."
	icon_state = "e"
	overlay_state = "e_worn"

/obj/item/clothing/accessory/scga_rank/e2
	name = "ranks (E-2 private)"
	desc = "Collar pins denoting the SCGA E-2 rank of Private."
	icon_state = "e2_device"
	overlay_state = "e_worn"

/obj/item/clothing/accessory/scga_rank/e3
	name = "ranks (E-3 private first class)"
	desc = "Collar pins denoting the SCGA E-3 rank of Private First Class."
	icon_state = "e3_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e4
	name = "ranks (E-4 corporal)"
	desc = "Collar pins denoting the SCGA E-4 rank of Corporal."
	icon_state = "e4_device"
	overlay_state = "e_worn"

/obj/item/clothing/accessory/scga_rank/e4_alt
	name = "ranks (E-4 specialist)"
	desc = "Collar pins denoting the SCGA alternative E-4 rank of Specialist."
	icon_state = "e4_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e5
	name = "ranks (E-5 sergeant)"
	desc = "Collar pins denoting the SCGA E-5 rank of Sergeant."
	icon_state = "e5_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e6
	name = "ranks (E-6 staff sergeant)"
	desc = "Collar pins denoting the SCGA E-6 rank of Staff Sergeant."
	icon_state = "e6_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e7
	name = "ranks (E-7 sergeant first class)"
	desc = "Collar pins denoting the SCGA E-7 rank of Sergeant First Class."
	icon_state = "e7_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e8
	name = "ranks (E-8 master sergeant)"
	desc = "Collar pins denoting the SCGA E-8 rank of Master Sergeant."
	icon_state = "e8_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e8_alt
	name = "ranks (E-8 first sergeant)"
	desc = "Collar pins denoting the SCGA E-8 rank of First Sergeant."
	icon_state = "e8_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e9
	name = "ranks (E-9 sergeant major)"
	desc = "Collar pins denoting the SCGA E-9 rank of Sergeant Major."
	icon_state = "e9_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e9_alt1
	name = "ranks (E-9 command sergeant major)"
	desc = "Collar pins denoting the SCGA E-9 rank of Command Sergeant Major."
	icon_state = "e9_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/e9_alt2
	name = "ranks (E-9 sergeant major of the army)"
	desc = "Collar pins denoting the SCGA E-9 rank of Sergeant Major of the Army."
	icon_state = "e9_device"
	overlay_state = "e_worn"


/obj/item/clothing/accessory/scga_rank/o1
	name = "ranks (O-1 second lieutenant)"
	desc = "Collar pins denoting the SCGA O-1 rank of Second Lieutenant."
	icon_state = "o1_device"
	overlay_state = "o_worn"


/obj/item/clothing/accessory/scga_rank/o2
	name = "ranks (O-2 first lieutenant)"
	desc = "Collar pins denoting the SCGA O-2 rank of First Lieutenant."
	icon_state = "o2_device"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o3
	name = "ranks (O-3 army captain)"
	desc = "Collar pins denoting the SCGA O-3 rank of Captain."
	icon_state = "o3_device"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o4
	name = "ranks (O-4 major)"
	desc = "Collar pins denoting the SCGA O-4 rank of Major."
	icon_state = "o4_device"
	overlay_state = "o_worn"


/obj/item/clothing/accessory/scga_rank/o5
	name = "ranks (O-5 lieutenant colonel)"
	desc = "Collar pins denoting the SCGA O-5 rank of Lieutenant Colonel."
	icon_state = "o5_device"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o6
	name = "ranks (O-6 colonel)"
	desc = "Collar pins denoting the SCGA O-6 rank of Colonel."
	icon_state = "o6_device"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o7
	name = "ranks (O-7 brigadier general)"
	desc = "Collar pins denoting the SCGA O-7 rank of Brigadier General."
	icon_state = "o_flag"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o8
	name = "ranks (O-8 major general)"
	desc = "Collar pins denoting the SCGA O-8 rank of Major General."
	icon_state = "o_flag"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o9
	name = "ranks (O-9 lieutenant general)"
	desc = "Collar pins denoting the SCGA O-9 rank of Lieutenant General."
	icon_state = "o_flag"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o10
	name = "ranks (O-10 general)"
	desc = "Collar pins denoting the SCGA O-10 rank of General."
	icon_state = "o_flag"
	overlay_state = "o_flag_worn"


/obj/item/clothing/accessory/scga_rank/o10_alt
	name = "ranks (O-10 field marshal"
	desc = "Collar pins denoting the SCGA O-10 rank of Field Marshal."
	icon_state = "o_flag"
	overlay_state = "o_flag_worn"
