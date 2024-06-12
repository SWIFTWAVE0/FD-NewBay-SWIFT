/obj/item/organ/internal/augment/tesla
	name = "tesla spine"
	augment_slots = AUGMENT_CHEST
	icon = 'mods/_fd/cyberware_mayhem/icons/stock_parts.dmi'
	icon_state = "debug_micro_laser"
	desc = "An built-in tesla coil, which can be powered up by various sources."
	augment_flags = AUGMENT_MECHANICAL | AUGMENT_SCANNABLE | AUGMENT_INSPECTABLE
	var/charge = 0

/obj/item/organ/internal/augment/tesla/proc/check_shock()
	if(is_broken())
		return FALSE
	if(is_bruised())
		if(prob(50))
			return FALSE
	else
		return TRUE

/mob/living/carbon/human/electrocute_act(shock_damage, obj/source, siemens_coeff = 1.0, def_zone = null)

	var/obj/item/organ/internal/augment/tesla/tesla = locate() in src.internal_organs
	if(tesla?.check_shock())
		if(tesla.charge >= 200)
			src.visible_message("<span class='warning'>[tesla] already full of energy!</span>")
			return FALSE
		src.playsound_local(get_turf(src), 'sound/effects/fastbeep.ogg', 20, is_global = TRUE)
		tesla.charge += 5
		src.visible_message("<span class='warning'>CURRENT COIL STATUS: [tesla.charge]/200!</span>")
		return FALSE

	..()

/obj/item/organ/internal/augment/tesla/Process()
	..()
	if (!owner)
		return
	if (is_broken())
		charge = 0
		return
	if (charge > 0)
		var/obj/item/organ/internal/cell/E = owner.internal_organs_by_name[BP_CELL]
		if (E.cell.charge < E.cell.maxcharge)
			E.cell.charge += 1
			charge -= 1
