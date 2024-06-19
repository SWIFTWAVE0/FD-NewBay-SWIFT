/obj/machinery/door/unpowered/simple/grim/attack_hand(mob/user as mob)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	if(lock && lock.isLocked())
		to_chat(user, "\The [src] is locked!")
		if(user.a_intent == I_GRAB)
			playsound(src.loc, 'mods/_fd/_maps/small_exoplanet_1/sounds/doorknock.wav', 70, 1)
			user.visible_message("<span class='danger'>\The [user] knocks at \the [src].</span>")
	if(user.a_intent == I_HURT && user.skill_check(SKILL_HAULING, SKILL_TRAINED))
		playsound(src.loc, 'mods/_fd/_maps/small_exoplanet_1/sounds/smod_freeman.ogg', 70, 1)
		open()
	if(operable())
		if(src.density)
			open()
		else
			close()
		return

/obj/machinery/door/unpowered/simple/grim/on_update_icon()
	if(density)
		icon_state = "[icon_base]"
	else
		icon_state = "[icon_base]open"
	return

/obj/machinery/door/unpowered/simple/grim/wood
	icon_base = "door"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/wood_door.dmi'
	icon_state = "wood"
	icon_base = "wood"
	opacity = 1
	density = 1
	color = null

/obj/machinery/door/unpowered/simple/grim/wood/New(newloc,material_name,complexity)
	..(newloc, "wood", complexity)
	color = null

/obj/machinery/door/unpowered/simple/grim/metal
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/metal_door.dmi'
	icon_state = "metal"
	icon_base = "metal"
	opacity = 1
	density = 1
	color = null
