/singleton/hierarchy/outfit/scga
	hierarchy_type = /singleton/hierarchy/outfit/scga
	flags = OUTFIT_RESET_EQUIPMENT | OUTFIT_ADJUSTMENT_ALL_SKIPS
	l_ear = /obj/item/device/radio/headset/ert
	l_hand = /obj/item/storage/backpack/dufflebag/scga_accessories


/singleton/hierarchy/outfit/scga/utility
	name = "SCGA - Utility"
	head = /obj/item/clothing/head/scga/utility
	uniform = /obj/item/clothing/under/scga/utility
	shoes = /obj/item/clothing/shoes/scga/utility
	gloves = /obj/item/clothing/gloves/scga/duty
	belt = /obj/item/storage/belt/general
	back = /obj/item/storage/backpack/messenger/brown


/singleton/hierarchy/outfit/scga/utility/tan
	name = "SCGA - Utility, Tan"
	head = /obj/item/clothing/head/scga/utility/tan
	uniform = /obj/item/clothing/under/scga/utility/tan
	shoes = /obj/item/clothing/shoes/scga/utility/tan
	gloves = /obj/item/clothing/gloves/scga/duty
	belt = /obj/item/storage/belt/general
	back = /obj/item/storage/backpack/messenger/brown


/singleton/hierarchy/outfit/scga/utility/urban
	name = "SCGA - Utility, Urban"
	head = /obj/item/clothing/head/scga/utility/urban
	uniform = /obj/item/clothing/under/scga/utility/urban
	shoes = /obj/item/clothing/shoes/scga/utility
	gloves = /obj/item/clothing/gloves/scga/duty
	belt = /obj/item/storage/belt/general
	back = /obj/item/storage/backpack/messenger/black


/singleton/hierarchy/outfit/scga/enlisted_service
	name = "SCGA - Enlisted Service"
	head = /obj/item/clothing/head/scga/service/garrison
	uniform = /obj/item/clothing/under/scga/service
	suit = /obj/item/clothing/suit/scga/service
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/enlisted_service_skirt
	name = "SCGA - Enlisted Service (Skirt)"
	head = /obj/item/clothing/head/scga/service/garrison
	uniform = /obj/item/clothing/under/scga/service/skirt
	suit = /obj/item/clothing/suit/scga/service
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/enlisted_dress
	name = "SCGA - Enlisted Dress"
	head = /obj/item/clothing/head/scga/dress/garrison
	uniform = /obj/item/clothing/under/scga/dress
	suit = /obj/item/clothing/suit/scga/dress
	shoes = /obj/item/clothing/shoes/scga/dress


/singleton/hierarchy/outfit/scga/enlisted_dress_skirt
	name = "SCGA - Enlisted Dress (Skirt)"
	head = /obj/item/clothing/head/scga/dress/garrison
	uniform = /obj/item/clothing/under/scga/dress/skirt
	suit = /obj/item/clothing/suit/scga/dress
	shoes = /obj/item/clothing/shoes/scga/dress


/singleton/hierarchy/outfit/scga/officer_service
	name = "SCGA - Officer Service"
	head = /obj/item/clothing/head/scga/service/garrison_officer
	uniform = /obj/item/clothing/under/scga/service
	suit = /obj/item/clothing/suit/scga/service_officer
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/officer_service_skirt
	name = "SCGA - Officer Service (Skirt)"
	head = /obj/item/clothing/head/scga/service/garrison_officer
	uniform = /obj/item/clothing/under/scga/service/skirt
	suit = /obj/item/clothing/suit/scga/service_officer
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/officer_dress
	name = "SCGA - Officer Dress"
	head = /obj/item/clothing/head/scga/dress/wheel
	uniform = /obj/item/clothing/under/scga/dress
	suit = /obj/item/clothing/suit/scga/dress
	shoes = /obj/item/clothing/shoes/scga/dress


/singleton/hierarchy/outfit/scga/officer_dress_skirt
	name = "SCGA - Officer Dress (Skirt)"
	head = /obj/item/clothing/head/scga/dress/wheel
	uniform = /obj/item/clothing/under/scga/dress/skirt
	suit = /obj/item/clothing/suit/scga/dress
	shoes = /obj/item/clothing/shoes/scga/dress


/singleton/hierarchy/outfit/scga/command_service
	name = "SCGA - Command Service"
	head = /obj/item/clothing/head/scga/service/wheel_command
	uniform = /obj/item/clothing/under/scga/service_command
	suit = /obj/item/clothing/suit/scga/service_officer
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/command_service_skirt
	name = "SCGA - Command Service (Skirt)"
	head = /obj/item/clothing/head/scga/service/wheel_command
	uniform = /obj/item/clothing/under/scga/service_command/skirt
	suit = /obj/item/clothing/suit/scga/service_officer
	shoes = /obj/item/clothing/shoes/scga/dress
	belt = /obj/item/storage/belt/general


/singleton/hierarchy/outfit/scga/command_dress
	name ="SCGA - Command Dress"
	head = /obj/item/clothing/head/scga/dress/wheel_command
	uniform = /obj/item/clothing/under/scga/dress_command
	suit = /obj/item/clothing/suit/scga/dress_command
	shoes = /obj/item/clothing/shoes/scga/dress


/singleton/hierarchy/outfit/scga/command_dress_skirt
	name ="SCGA - Command Dress (Skirt)"
	head = /obj/item/clothing/head/scga/dress/wheel_command
	uniform = /obj/item/clothing/under/scga/dress_command/skirt
	suit = /obj/item/clothing/suit/scga/dress_command
	shoes = /obj/item/clothing/shoes/scga/dress

//outfits for Torch-bound SCGA servicemen
/singleton/hierarchy/mil_uniform/army
	name = "Master army outfit"
	hierarchy_type = /singleton/hierarchy/mil_uniform/army
	branches = list(/datum/mil_branch/scga)

	pt_under = /obj/item/clothing/under/scga/pt
	pt_shoes = /obj/item/clothing/shoes/brown

	utility_under = /obj/item/clothing/under/scga/utility/urban
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/scga/utility/urban
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka, /obj/item/clothing/head/scga/utility/ushanka/green, /obj/item/clothing/suit/scga/hooded/wintercoat)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/scga/service/wheel
	service_extra = list(/obj/item/clothing/head/scga/dress/garrison)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/scga/dress/wheel
	dress_gloves = /obj/item/clothing/gloves/white

/singleton/hierarchy/mil_uniform/army/com //Can only be officers
	name = "Army command"
	departments = COM

	utility_under = /obj/item/clothing/under/scga/utility/urban/command
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/command,
						/obj/item/clothing/under/scga/utility/tan/command,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/eng
	name = "Army engineering"
	departments = ENG

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/engineering,
						/obj/item/clothing/under/scga/utility/tan/engineering,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)
	utility_under = /obj/item/clothing/under/scga/utility/urban/engineering


/singleton/hierarchy/mil_uniform/army/eng/sword
	name = "Army NCO sword engineering"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/eng/officer
	name = "Army engineering CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/engineering,
						/obj/item/clothing/under/scga/utility/tan/engineering,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/eng/officer/com //Can only be officers
	name = "Army engineering command"
	departments = ENG|COM

/singleton/hierarchy/mil_uniform/army/sec
	name = "Army security"
	departments = SEC

	utility_under = /obj/item/clothing/under/scga/utility/urban/security
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/security,
						/obj/item/clothing/under/scga/utility/tan/security,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

/singleton/hierarchy/mil_uniform/army/sec/sword
	name = "Army NCO sword security"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/sec/officer
	name = "Army security CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/security,
						/obj/item/clothing/under/scga/utility/tan/security,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/sec/officer/com //Can only be officers
	name = "Army security command"
	departments = SEC|COM

/singleton/hierarchy/mil_uniform/army/med
	name = "Army medical"
	departments = MED

	utility_under = /obj/item/clothing/under/scga/utility/urban/medical
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/medical,
						/obj/item/clothing/under/scga/utility/tan/medical,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

/singleton/hierarchy/mil_uniform/army/med/sword
	name = "Army NCO sword medical"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/med/officer
	name = "Army medical CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/medical,
						/obj/item/clothing/under/scga/utility/tan/medical,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/med/officer/com //Can only be officers
	name = "Army medical command"
	departments = MED|COM

/singleton/hierarchy/mil_uniform/army/sup
	name = "Army supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/scga/utility/urban/supply
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/supply,
						/obj/item/clothing/under/scga/utility/tan/supply,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

/singleton/hierarchy/mil_uniform/army/sup/sword
	name = "Army NCO sword supply"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/sup/officer
	name = "Army supply CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/supply,
						/obj/item/clothing/under/scga/utility/tan/supply,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/srv
	name = "Army service"
	departments = SRV

	utility_under = /obj/item/clothing/under/scga/utility/urban/service
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/service,
						/obj/item/clothing/under/scga/utility/tan/service,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

/singleton/hierarchy/mil_uniform/army/srv/sword
	name = "Army NCO sword service"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/srv/officer
	name = "Army service CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/service,
						/obj/item/clothing/under/scga/utility/tan/service,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)


	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/exp
	name = "Army exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/scga/utility/urban/exploration
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/exploration,
						/obj/item/clothing/under/scga/utility/tan/exploration,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)


/singleton/hierarchy/mil_uniform/army/exp/sword
	name = "Army NCO sword exploration"
	min_rank = 4

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/exp/officer
	name = "Army exploration CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/exploration,
						/obj/item/clothing/under/scga/utility/tan/exploration,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/spt
	name = "Army command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/scga/utility/urban/command
	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/command,
						/obj/item/clothing/under/scga/utility/tan/command,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_extra = list(/obj/item/clothing/head/scga/service/garrison)

	dress_extra = list(/obj/item/material/sword/replica/officersword/scga)

/singleton/hierarchy/mil_uniform/army/spt/officer
	name = "Army command support CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/head/scga/utility/ushanka/green,
						/obj/item/clothing/head/scga/utility/ushanka,
						/obj/item/clothing/suit/scga/hooded/wintercoat,
						/obj/item/clothing/under/scga/utility/command,
						/obj/item/clothing/under/scga/utility/tan/command,
						/obj/item/clothing/head/scga/utility,
						/obj/item/clothing/head/scga/utility/tan,
						/obj/item/clothing/gloves/thick)

	service_under = /obj/item/clothing/under/scga/service
	service_skirt = /obj/item/clothing/under/scga/service/skirt
	service_over = /obj/item/clothing/suit/scga/service_officer
	service_hat = /obj/item/clothing/head/scga/service/wheel_command
	service_extra = list(/obj/item/clothing/head/scga/service/garrison_officer)

	dress_under = /obj/item/clothing/under/scga/dress
	dress_skirt = /obj/item/clothing/under/scga/dress/skirt
	dress_over = /obj/item/clothing/suit/scga/dress_command
	dress_hat = /obj/item/clothing/head/scga/dress/wheel_command
	dress_extra = list(/obj/item/material/sword/replica/officersword/scga/officer)

/singleton/hierarchy/mil_uniform/army/sargehat
	name = "Army Sergeant's Hat"
	min_rank = 5

	service_extra = list(/obj/item/clothing/head/scga/utility/drill)
