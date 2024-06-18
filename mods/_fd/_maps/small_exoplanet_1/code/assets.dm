/obj/screen/fullscreen/underwater
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/water.dmi'
	icon_state = "water_deep"
	screen_loc = ui_entire_screen
	layer = FULLSCREEN_LAYER
	alpha = 100

/obj/screen/fullscreen/light_rain
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/weather.dmi'
	screen_loc = "WEST,SOUTH to EAST,NORTH"
	icon_state = "rain_1"
	alpha = 25

/obj/screen/fullscreen/mist
	icon = 'icons/effects/tile_effects.dmi'
	screen_loc = "WEST,SOUTH to EAST,NORTH"
	icon_state = "backfog"
	alpha = 40

/turf/simulated/open/water
	name = "deep water"
	desc = "It's so dark there that you can't even see the bottom."

/obj/structure/fake_water
	name = "deep water"
	desc = "It's so dark there that you can't even see the bottom."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/water.dmi'
	icon_state = "water_deep"
	alpha = 100

/turf/simulated/floor/exoplanet/water/shallow/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/water.dmi'
	icon_state = "water_medium"

/mob/living/proc/update_water_overlay()
	if(istype(loc, /turf/simulated/floor/exoplanet/water/shallow/grim))
		if(!get_filter("underwater"))
			add_filter("underwater", 1, list("type" = "alpha", "icon" = icon('mods/_fd/_maps/small_exoplanet_1/icons/watermask.dmi')))
	else
		remove_filter("underwater")

/turf/simulated/floor/exoplanet/water/shallow/grim/Entered(mob/living/L)
	..()
	if(istype(L))
		L.update_water_overlay()

/turf/simulated/floor/exoplanet/water/shallow/grim/Exited(mob/living/L)
	..()
	if(istype(L))
		L.update_water_overlay()

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

/turf/simulated/ocean/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "shale0"

/turf/simulated/ocean/grim/add_decal()
	return 0

/turf/simulated/ocean/grim/New()
	..()
	icon_state = "shale[rand(0, 4)]"

/turf/simulated/ocean/grim_windswept
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "shale_windswept"

/turf/simulated/ocean/grim_windswept/add_decal()
	return 0

/turf/simulated/floor/exoplanet/grim_seaport
	name = "mossy bricks"
	desc = "An very old foundation, covered in thick green moss"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "stone_old2"

/turf/simulated/floor/exoplanet/grim_asphalt1
	name = "broken asphalt"
	desc = "An cracked old road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/asphalt.dmi'
	icon_state = "road1"

/turf/simulated/floor/exoplanet/grim_asphalt1/New()
	..()
	icon_state = "road[rand(1, 4)]"

/turf/simulated/floor/exoplanet/brick_road
	name = "old bricky road"
	desc = "An cracked and molded road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone"

/turf/simulated/floor/exoplanet/brick_road/New()
	..()
	icon_state = "stone_[rand(1, 10)]"

/turf/simulated/floor/exoplanet/grim_asphalt2
	name = "old bricky road"
	desc = "An cracked and molded road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_asphalt"

/turf/simulated/floor/exoplanet/grim_asphalt2/New()
	..()
	icon_state = "concrete_asphalt_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/rocky_road
	name = "rocky green road"
	desc = "An cracked road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_green"

/turf/simulated/floor/exoplanet/slab
	name = "old stone slab"
	desc = "An cracked pavement."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_slab"

/turf/simulated/floor/exoplanet/slab/New()
	..()
	icon_state = "stone_slab_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/concrete_pavement
	name = "concrete pavement"
	desc = "An old grayish route."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete"

/turf/simulated/floor/exoplanet/concrete_pavement/New()
	..()
	icon_state = "concrete_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/gravel
	name = "gravel"
	desc = "Just a gravel, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "gravel"

/turf/simulated/floor/exoplanet/gravel/New()
	..()
	icon_state = "gravel_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_dirt
	name = "dirt"
	desc = "Just a dirt, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "dirt"

/turf/simulated/floor/exoplanet/grim_dirt/New()
	..()
	icon_state = "dirt_[rand(1, 16)]"

/turf/simulated/floor/exoplanet/wet_stone
	name = "wet stone pile"
	desc = "Just some stones, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_n"

/turf/simulated/floor/exoplanet/wet_stone/New()
	..()
	icon_state = "stone_n_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/wet_stone2
	name = "wet stone pile"
	desc = "Just some stones, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_nalt"

/turf/simulated/floor/exoplanet/wet_stone2/New()
	..()
	icon_state = "stone_nalt_[rand(1, 4)]"

//forgive me god for the sins i'm about to commit

/obj/structure/fd/grim_walls
	desc = "Just a wall, nothing special"
	density = TRUE
	anchored = TRUE
	opacity = FALSE

/obj/structure/fd/grim_walls/brick
	icon_state = "boss_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/boss_wall.dmi'

	name = "brick wall"

/obj/structure/fd/grim_walls/rock
	icon_state = "jungle_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/jungle_wall.dmi'

	pixel_x = -4
	pixel_y = -4
	color = "#363636"

	name = "rock wall"
