GLOBAL_LIST_INIT(psi_level2cost, list(
	"Blunt"       = 0,
	"Latent"      = 1,
	"Apprentice"  = 2,
	"Operant"     = 4,
	"Master"      = 6,
	"Grandmaster" = 8
))

GLOBAL_LIST_INIT(psi_faculty2color, list(
	"Catastellia" = COLOR_SURGERY_BLUE,
	"Allaxetia"   = COLOR_SURGERY_BLUE,
	"Hyloforia"   = COLOR_MEDICAL_UNKNOWN_IMPLANT,
	"Demiurgy"    = COLOR_LIGHT_CYAN,
	"Metaplexy"   = COLOR_SEDONA,
	"Teleplexy"   = COLOR_LIGHT_CYAN,
	"Ephanoferia" = MANIFEST_COLOR_SERVICE
))

GLOBAL_LIST_INIT(psi_threat_level2free_points, list(3, 4, 9, 14))

/datum/preferences
	var/list/psi_abilities


/datum/category_item/player_setup_item/psionics/abilities
	name = "Abilities"
	sort_order = 3

/datum/category_item/player_setup_item/psionics/abilities/load_character(datum/pref_record_reader/R)
	pref.psi_abilities = R.read("psi_abilities")

/datum/category_item/player_setup_item/psionics/abilities/save_character(datum/pref_record_writer/W)
	W.write("psi_abilities", pref.psi_abilities)

/datum/category_item/player_setup_item/psionics/abilities/sanitize_character()
	if(pref.psi_abilities)
		return ..()

	pref.psi_abilities = list()
	for(var/faculty in SSpsi.faculties_by_name)
		pref.psi_abilities[faculty] = 1

	return ..()

/datum/category_item/player_setup_item/psionics/abilities/proc/calculate_free_points()
	. = GLOB.psi_threat_level2free_points[pref.psi_threat_level]

	for(var/faculty in pref.psi_abilities)
		for(var/level in 1 to GLOB.psi_level2cost.len)
			var/level_name = GLOB.psi_level2cost[level]
			var/level_cost = GLOB.psi_level2cost[level_name]

			if(pref.psi_abilities[faculty] == level)
				. -= level_cost

/datum/category_item/player_setup_item/psionics/abilities/proc/can_select_level(faculty, level)
	return (calculate_free_points() + GLOB.psi_level2cost[GLOB.psi_level2cost[pref.psi_abilities[faculty]]]) >= GLOB.psi_level2cost[GLOB.psi_level2cost[level]]

/datum/category_item/player_setup_item/psionics/abilities/content()
	if(!pref.psi_threat_level)
		return ..()

	. = list()

	. += "<style>"
	. += ".Current{background: #2f943c}"
	. += ".Unavailable{background: #404040}"
	. += ".Selectable, a.Selectable{float:none; border:none; margin:none !important; padding:none !important}"
	. += ".center { margin: auto; }"
	. += ".candystripe { background-color: rgba(148, 148, 148, 0.25);}"
	. += ".candystripe:nth-child(odd) {background-color: rgba(0, 0, 0, 0.16);}"

	. += "</style>"

	. += "<tt><center>"

	. += FONT_LARGE("<b>Points remaining: [calculate_free_points()]</b>")

	. += "<table style='width: 100%' style='font-size: 15px; text-align: center' class='table'>"

	for(var/faculty in pref.psi_abilities)
		. += "<tr class='candystripe'>"
		. += "<th><div class='average' style='color: [GLOB.psi_faculty2color[faculty]]'>[faculty]:</div></th>"

		for(var/level_index in 1 to GLOB.psi_level2cost.len)
			var/level_name = GLOB.psi_level2cost[level_index]

			if(pref.psi_abilities[faculty] == level_index)
				. += "<td class='Current'><div class='center'>[level_name]</div></td>"
			else if(can_select_level(faculty, level_index))
				. += "<td class style='background: #40628a;'><div class='center'><a class='Selectable' href='?src=\ref[src];select=[level_index];faculty=[faculty]'>[level_name]</a></div></td>"
			else
				. += "<td class='Unavailable'><div class='center'>[level_name]</div></td>"

		. += "</tr>"

	. += "</table>"

	. += "</center></tt>"

	. = jointext(., null)

/datum/category_item/player_setup_item/psionics/abilities/OnTopic(href, list/href_list, mob/user)
	if(..())
		return TOPIC_HANDLED

	if(href_list["select"])
		var/level   = text2num(href_list["select"])
		var/faculty = href_list["faculty"]

		if(!can_select_level(faculty, level))
			return TOPIC_HANDLED

		pref.psi_abilities[faculty] = level

	return TOPIC_REFRESH
