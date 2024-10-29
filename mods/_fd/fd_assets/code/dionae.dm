/obj/overlay/diona
	icon = 'mods/_fd/fd_assets/icons/biomass.dmi'
	icon_state = "diona-wall"
	var/examine_desc = "That thing made from... Some sort of Organic?"
	var/skill_examine = "Ye-ah! That thing is totaly made from Dionae!"
	layer = ABOVE_TILE_LAYER
	mouse_opacity = 1
	anchored = TRUE

/obj/overlay/diona/wall
	name = "wall"
	desc = "What a freaking hell is it?"
	anchored = TRUE
	density = TRUE

/turf/simulated/wall/proc/dionaze()
	if(locate(/obj/overlay/diona/wall) in src)
		return
	var/obj/overlay/diona/wall/diona = new(src)
	desc = diona.desc

/turf/simulated/wall/examine(mob/user)
	. = ..()

	if(locate(/obj/overlay/diona/wall) in src)
		var/obj/overlay/diona/wall/diona
		to_chat(user, SPAN_WARNING(diona.examine_desc))
		if(user.skill_check(SKILL_BOTANY, SKILL_HARD) || user.skill_check(SKILL_SCIENCE, SKILL_BASELINE))
			to_chat(user, SPAN_NOTICE(diona.skill_examine))


/obj/overlay/diona/decorator // Some sort of just nice wall
	name = "decorator"
	icon_state = "dionadecorator"
	density = TRUE
