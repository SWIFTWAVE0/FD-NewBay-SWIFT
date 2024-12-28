/turf/unsimulated/moving
	icon = 'mods/_fd/_maps/new_year_house/icons/the_walls_are_crawling.dmi'
	density = TRUE

/turf/unsimulated/moving/wall
	name = "steel wall"
	icon_state = "wall"
	opacity = TRUE
	color = COLOR_GUNMETAL

/turf/unsimulated/moving/floor
	name = "gravel"
	icon_state = "floor"
	opacity = FALSE

/turf/unsimulated/moving/floor/rail
	name = "old stone slab"
	icon_state = "rail"
	opacity = FALSE

// теперь осталось только заставить иконки двигаться но я заебался передаю эстафету завтрашнему мне

/obj/machinery/ion_engine
	density = TRUE // если бы не эта строка кота то мир бы схлопнулся и человечеству настал конец
