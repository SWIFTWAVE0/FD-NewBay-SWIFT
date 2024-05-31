/datum/trader/ship/gunshop
	name = "Работник военспеца"
	name_language = TRADER_DEFAULT_NAME
	origin = "Военспец"
	skill_req = SKILL_WEAPONS
	possible_origins = list("Пиф-Паф Ой-ёй-Ой", "Бомбический", "Дикий-дикий Запад", "Келешников", "Охотничье Депо", "Большие хищники")
	speech = list(TRADER_HAIL_GENERIC    = "Привет-привет! Надеюсь, у тебя есть лицензия на использование этого оружия! Ох, да кого я пытаюсь наебать? Милости прошу!",
				TRADER_HAIL_DENY         = "Наша политика предписывает послать тебя НАХУЙ.",

				TRADER_TRADE_COMPLETE    = "Спасибо за покупку в военспеце ORIGIN!",
				TRADER_NO_BLACKLISTED   = "Слушай, мы может и продаём пушки, но это ещё не значит, что мы повязаны с нелегалом...",
				TRADER_NO_GOODS    = "Пушки за деньги. Вот и вся маза.",
				TRADER_NOT_ENOUGH  = "Слушай, мы продаём здесь РЕАЛЬНЫЕ пушки! Так что дай нам РЕАЛЬНЫЕ деньги!",
				TRADER_HOW_MUCH          = "Что же, думаю эта красотка обойдётся тебе в VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "Будь мы в одной комнате - я б точно тебя ударил.",
				TRADER_COMPLEMENT_SUCCESS = "Ха! А неплохо!",
				TRADER_INSULT_GOOD       = "Я ожидал лучшего от тебя. Видимо, я ошибся.",
				TRADER_INSULT_BAD        = "Пристрелил бы тебя прямо здесь! Если бы мы не продали наши корабельные орудия чтобы покрыть долги..."
				)

	possible_trading_items = list(/obj/item/gun/projectile/pistol/holdout    = TRADER_ALL,
								/obj/item/gun/projectile/pistol/magnum_pistol= TRADER_ALL,
								/obj/item/gun/projectile/pistol/sec         = TRADER_ALL,
								/obj/item/gun/projectile/heavysniper/boltaction	= TRADER_ALL,
								/obj/item/gun/projectile/pistol/sec/MK      = TRADER_BLACKLIST,
								/obj/item/gun/projectile/shotgun/pump= TRADER_SUBTYPES_ONLY,
								/obj/item/ammo_magazine                     = TRADER_SUBTYPES_ONLY,
								/obj/item/ammo_magazine/pistol/empty         = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/gyrojet/empty           = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/pistol/small/empty         = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/pistol/empty         = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/box/pistol/empty       = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/box/machinegun/empty      = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/machine_pistol/empty        = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/smg_top/empty        = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/magnum/empty           = TRADER_BLACKLIST,
								/obj/item/clothing/accessory/storage/holster        = TRADER_ALL)

/datum/trader/ship/egunshop
	name = "Работник"
	name_language = TRADER_DEFAULT_NAME
	origin = "Магазин ЕГанов"
	skill_req = SKILL_WEAPONS
	possible_origins = list("Императорский Лазган", "Оружие будущего", "Солнечная Армия", "Электрические руковицы Кёрфера", "Е-Ган")
	speech = list(TRADER_HAIL_GENERIC    = "Добро пожаловать в войну будущего, в ORIGIN! Самое передовое вооружение! Только у нас!",
				TRADER_HAIL_DENY         = "...",

				TRADER_TRADE_COMPLETE    = "Благодарю вас за покупку. Надеюсь, вы прожжёте этой крошкой не мало сердец!",
				TRADER_NO_BLACKLISTED   = "Простите, это какая-то шутка?",
				TRADER_NO_GOODS    = "Деньги.",
				TRADER_NOT_ENOUGH  = "Произведение технологического искусства стоит больше, нежели эти копейки.",
				TRADER_HOW_MUCH          = "Наши самородки военной индустрии считаются бесценными, но я бы мог продать вам конкретно этот за VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "Будь я тупее, може, я бы и поверил вам.",
				TRADER_COMPLEMENT_SUCCESS = "Да, я определённо умён.",
				TRADER_INSULT_GOOD       = "Энергетическое оружие - это будущее ведения войны! Ваша кинетика - это просто бруталистский пережиток истории!",
				TRADER_INSULT_BAD        = "Это...очень грубо. Если вы не прекратите - то мне придётся заблокировать данный канал связи."
				)

	possible_trading_items = list(/obj/item/gun/energy/taser                      = TRADER_THIS_TYPE,
								/obj/item/gun/energy/stunrevolver                 = TRADER_THIS_TYPE,
								/obj/item/gun/energy/xray                         = TRADER_THIS_TYPE,
								/obj/item/gun/energy/laser                        = TRADER_THIS_TYPE,
								/obj/item/gun/energy/gun                          = TRADER_THIS_TYPE,
								/obj/item/cell/crap                               = TRADER_THIS_TYPE,
								/obj/item/cell/standard                           = TRADER_THIS_TYPE,
								/obj/item/cell/high                               = TRADER_THIS_TYPE,
								/obj/item/cell/super                              = TRADER_THIS_TYPE,
								/obj/item/cell/hyper                              = TRADER_THIS_TYPE,
								/obj/item/clothing/accessory/storage/holster             = TRADER_ALL)

/datum/trader/dogan
	name = "Дуган"
	origin = "Торговый маяк Дугана"
	skill_req = SKILL_WEAPONS
	speech = list(TRADER_HAIL_GENERIC    = "Привет! Это Дуган и ты слушаешь предзаписанный мной диалог! Надеюсь, тебе приглянётся что-нибудь из нашего ассортимента!",
				TRADER_HAIL_DENY         = "Я предлагаю вам больше...НЕ...посещать наш магазин!",

				TRADER_TRADE_COMPLETE    = "Спасибо тебе за...ПОКУПКУ...ЭТОГО КАЧЕСТВЕННОГО...ПРЕДМЕТА...у меня!",
				TRADER_NO_BLACKLISTED   = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...НЕЛЕГАЛЬНОГО ПРЕДМЕТА ОТ КОТОРОГО Я ОТКАЖУСЬ...мне!",
				TRADER_NO_GOODS    = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...НЕПОДХОДЯЩЕГО ПО КРИТЕРИЯМ КУПЛЕПРОДАЖИ ПРЕДМЕТА...мне!",
				TRADER_NOT_ENOUGH  = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...СЛИШКОМ ДЕШЁВОГО ПРЕДМЕТА...мне!",
				TRADER_HOW_MUCH          = "Спасибо тебе за...ИНТЕРЕС К ЦЕНЕ...ЭТОГО КАЧЕСТВЕННОГО...ПРЕДМЕТА...КОТОРЫЙ СТОИТ VALUE...у меня!",

				TRADER_COMPLEMENT_FAILURE   = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...КОМПЛИМЕНТА...для меня!",
				TRADER_COMPLEMENT_SUCCESS = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...КОМПЛИМЕНТА...для меня!",
				TRADER_INSULT_GOOD       = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...ОСКОРБЛЕНИЯ...для меня!",
				TRADER_INSULT_BAD        = "Спасибо тебе за предложение...ЭТОГО КАЧЕСТВЕННОГО...ОСКОРБЛЕНИЯ...для меня!"
				)
	compliment_increase = 0
	insult_drop = 0

	possible_trading_items = list(/obj/item/gun/projectile/pirate                = TRADER_THIS_TYPE,
								/obj/item/gun/projectile/pistol/sec/MK                  = TRADER_THIS_TYPE,
								/obj/item/gun/projectile/heavysniper/ant         = TRADER_THIS_TYPE,
								/obj/item/gun/energy/laser/dogan                 = TRADER_THIS_TYPE,
								/obj/item/gun/projectile/automatic/machine_pistol/usi  = TRADER_THIS_TYPE,
								/obj/item/clothing/accessory/storage/holster                    = TRADER_ALL)
