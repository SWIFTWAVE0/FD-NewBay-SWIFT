/obj/overlay/diona
	icon = 'mods/_fd/fd_assets/icons/biomass.dmi'
	icon_state = "diona-wall"
	layer = ABOVE_TILE_LAYER
	mouse_opacity = FALSE // It's should be OFF
	anchored = TRUE

// ----		WALLS		---- \\

/obj/overlay/diona/wall
	name = "organic wall"
	desc = "What a freaking hell is it?"
	anchored = TRUE
	density = TRUE

/turf/simulated/wall/proc/dionaze()
	if(locate(/obj/overlay/diona/wall) in src)
		return
	var/obj/overlay/diona/wall/diona = new(src)
	desc = diona.desc
	name = diona.name

/turf/simulated/wall/proc/dedionaze(mob/user)
	for(var/obj/overlay/diona/wall/diona in src)
		desc = initial(desc)
		name = initial(name)
		if(isnull(user))
			qdel(diona)
			return
		user.visible_message(SPAN_WARNING("Dionae deleted"), range = 4)
		qdel(diona)

/turf/simulated/wall/on_death()
	. = ..()
	for(var/obj/overlay/diona/wall/diona in src)
		qdel(diona)

/turf/simulated/wall/use_weapon(obj/item/weapon, mob/living/user, list/click_params)
	. = ..()
	var/diona = locate(/obj/overlay/diona/wall) in src
	if(diona)
		if(!(weapon.force < 25 || weapon.sharp == 1) && !IsHatchet(weapon))
			user.visible_message(SPAN_WARNING("[user] hit the [name], but cause no visible damage!"))
			return
		user.visible_message(SPAN_WARNING("[user] begins to chop down the [name]"))
		if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
			dedionaze(user)

/turf/simulated/wall/use_tool(obj/item/W, mob/living/user, list/click_params)
	if(locate(/obj/overlay/diona/wall) in src)
		to_chat(user, SPAN_NOTICE("It's seems  that you can't use tools to make something on organic wall..."))
		return // We can't dismantle it, if it DIONAE
	. = ..()


/turf/simulated/wall/examine(mob/user)
	. = ..()

	var/diona = locate(/obj/overlay/diona/wall) in src
	if(diona)
		to_chat(user, SPAN_WARNING("That thing made from... Some sort of Organic?"))
		if(user.skill_check(SKILL_BOTANY, SKILL_HARD) || user.skill_check(SKILL_SCIENCE, SKILL_BASELINE))
			to_chat(user, SPAN_NOTICE("Ye-ah! That thing is totaly made from Dionae!"))


/obj/overlay/diona/decorator // Some sort of just nice wall
	name = "decorator"
	icon_state = "dionadecorator"
	density = FALSE

// ----		FLOOR		---- \\




// ----		LANDMARKS		---- \\
