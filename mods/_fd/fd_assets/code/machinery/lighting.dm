/obj/machinery/light/Initialize(mapload, obj/machinery/light_construct/construct = null)
	. = ..(mapload, construct)
	if(color)
		set_color(color)
		update_icon(FALSE)
		update_light()
