/obj/structure/moss
	name = "green moss"
	desc = "A pile of gross water plants piled together."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/moss.dmi'
	icon_state = "moss_square"

/obj/structure/flora/tree/grim/brown
	name = "dead tree"
	desc = "It does look pretty strange, but you can't say why exactly"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliagetall.dmi'
	icon_state = "t11"
	var/chopped = FALSE

/obj/structure/flora/tree/grim/brown/use_tool(obj/item/W, mob/user)
	if(istype(W,/obj/item/material/hatchet) || istype(W,/obj/item/psychic_power/psiaxe) || istype(W,/obj/item/psychic_power/psiblade))
		if(!chopped)
			visible_message("<span class='notice'>\The [user] starts chopping \the [src]</span>")
			if( do_after(user, 50) )
				visible_message("<span class='notice'>\The [user] cutted \the [src]!</span>")
				new /obj/item/stack/material/wood/ten(get_turf(src))
				chopped = TRUE
				density = FALSE
				icon_state = "t[rand(1, 4)]stump"
		if(chopped)
			to_chat(user,SPAN_NOTICE("This tree is already chopped down to stump!"))
			return FALSE
	return ..()

/obj/structure/flora/tree/grim/brown/New()
	..()
	icon_state = "t[rand(1, 16)]"

/obj/structure/flora/tree/grim/ghost
	name = "dead tree"
	desc = "It's screaming...you can almost hear it."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliagetall.dmi'
	icon_state = "screaming1"

/obj/structure/flora/tree/grim/ghost/use_tool(obj/item/W, mob/user)
	return ..()

/obj/structure/flora/tree/grim/ghost/New()
	..()
	icon_state = "screaming[rand(1, 3)]"

/obj/structure/fd/grim_lamp
	name = "tall lamp post"
	desc = "Very old looking lamp, powered from unknown source."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "slamp1"
	anchored = TRUE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/fd/grim_lamp/Initialize()
	. = ..()
	set_light(3, 0.7, l_color = "#79da53")

/obj/structure/fd/grim_lamp_double
	name = "tall lamp post"
	desc = "Very old looking lamp, powered from unknown source."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/64x64.dmi'
	icon_state = "midlamp1"
	pixel_x = -16
	anchored = TRUE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/fd/grim_lamp_double/Initialize()
	. = ..()
	set_light(5, 0.8, l_color = "#79da53")
