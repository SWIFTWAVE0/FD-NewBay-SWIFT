/datum/trader/ship/vox
	typical_duration = 60
	origin = "UNREGISTERED VESSEL"
	name_language = LANGUAGE_VOX
	compliment_increase = 0
	trade_flags = TRADER_GOODS
	var/hailed_vox = FALSE //Whether we have been hailed by a vox. negatives mean pariah, positives mean regular.
	blacklisted_trade_items = null

	speech = list(TRADER_HAIL_GENERIC    = "РЯЯЯЯ! Патаргуем, да-а?",
				TRADER_HAIL_DENY         = "УХАДИ!",

				TRADER_TRADE_COMPLETE    = "Да-а, ки-ки-ки-ки-ки! Мясной мешок будет доволен пакупкой!",
				TRADER_NO_MONEY    = "Бумашки? Воксу не нужны бумашки! ПРЕЛЕСТЬ! мне нужна ПРЕЛЕСТЬ!",
				TRADER_NOT_ENOUGH  = "Большой хотеть больше за эту штуку, мешок давать больше!",

				TRADER_HOW_MUCH          = "Что-нибудь по стоимости VALUE падёт?",
				TRADER_WHAT_WANT         = "Мне нада...",

				TRADER_COMPLEMENT_FAILURE   = "Нет.",
				TRADER_COMPLEMENT_SUCCESS = "Ки-ки-ки! Таргавать интереснее щем говорить, правда?",
				TRADER_INSULT_GOOD       = "Блех! Чё я сделал мешку?",
				TRADER_INSULT_BAD        = "Все вы мешки одинаковые! Брысь! Брысь!",
				)

	var/list/visited_vox_speech = list(
		TRADER_HAIL_GENERIC      = "РЯЯЯЯ! Брат-вокс помогать другому брату-воксу! Но не за бесплатно!",
		TRADER_HAIL_DENY         = "Пака!",

		TRADER_TRADE_COMPLETE    = "Да...да...это достойная сделка!",
		TRADER_NO_MONEY    = "Брат-вокс должен знать как и я, што бумашки здесь не нужны.",
		TRADER_NOT_ENOUGH  = "Ехь, и это всё? Брат-вокс должен дать што-то столь же ценное взамен!",

		TRADER_HOW_MUCH          = "Хм-м... VALUE. Или около того.",
		TRADER_WHAT_WANT         = "Нам нада...",

		TRADER_COMPLEMENT_FAILURE   = "Мешки гаварили вещи и похуже!",
		TRADER_COMPLEMENT_SUCCESS = "А ловко брат-вокс это придумал! Я сначала и не понял!",
		TRADER_INSULT_GOOD       = "С щего вдруг такое отнашение? Што, предложение настолько плохое?",
		TRADER_INSULT_BAD        = "Я пажалуюсь на тебя дома! Старшие надают тебе по голове!"
		)
	possible_wanted_items = list(/obj/item/                  = TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material            = TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/cyborg     = TRADER_BLACKLIST_ALL,
								/obj/item/organ                     = TRADER_SUBTYPES_ONLY,
								)

	possible_trading_items = list(/obj/item/gun/projectile/dartgun/vox           = TRADER_SUBTYPES_ONLY,
								/obj/item/trash                                         = TRADER_SUBTYPES_ONLY,
								/obj/item/remains                                       = TRADER_ALL,
								/obj/item/clothing/accessory                            = TRADER_ALL,
								/obj/item/robot_parts                                   = TRADER_SUBTYPES_ONLY,
								/obj/item/robot_parts/robot_component                   = TRADER_BLACKLIST
								)

	mob_transfer_message = "<span class='danger'>Вы были перемещены на ORIGIN. Последнее, что вы помните - это удар по голове и пронзительное гоготание воксов. А затем была только темнота.</span>"

/datum/trader/ship/vox/New()
	..()
	speech[TRADER_HAIL_START + "silicon"] = "Привет железка! Ты таргуеш сабой?"
	speech[TRADER_HAIL_START + SPECIES_HUMAN] = "Привет челавек! Ки-ки-ки! MOB решил патаргавать с воксом? Как круто!"

	visited_vox_speech[TRADER_HAIL_START + "silicon"] = "ТЫ ПАНИМАЕШЬ НАС? Ты крутая железяка, MOB. Эти торги будут отменны!"
	visited_vox_speech[TRADER_HAIL_START + SPECIES_HUMAN] = "Друх вокса - друх всех воксав! MOB, прахади!"
	visited_vox_speech[TRADER_HAIL_START + SPECIES_VOX] = "РЯЯЯ! Пусть бохи благаславят наши торги, MOB!"

/datum/trader/ship/vox/hail(mob/user)
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		if(H.species)
			switch(H.species.name)
				if(SPECIES_VOX)
					disposition[map_sectors["[user.z]"]] = 1000
					hailed_vox = TRUE
					speech = visited_vox_speech
	. = ..()

/datum/trader/ship/vox/can_hail()
	if(hailed_vox >= 0)
		return ..()
	return FALSE

/datum/trader/ship/vox/get_item_value(trading_num)
	. = ..()
	if(!hailed_vox)
		. *= 2
