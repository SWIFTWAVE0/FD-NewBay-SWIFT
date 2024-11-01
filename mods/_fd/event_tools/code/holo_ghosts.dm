// Нужен исключительно для того, чтобы активировать остальные спавнеры

/obj/structure/holo_starter
	name = "holo orb"
	desc = "Сфера, содержащая в себе короткий фрагмент воспоминаний на основе когнитивных данных участников."
	var/cutscene_id = "test"
	icon = 'packs/infinity/icons/mob/hologram.dmi'
	icon_state = "Vega"
	density = FALSE
	anchored = TRUE

/obj/structure/holo_starter/attack_hand(mob/user)
	if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
		for(var/obj/holo_spawner/mobs in orange(10, src))
			if(mobs.character_id == cutscene_id)
				mobs.start_scene()
		qdel(src)

/obj/holo_spawner
	name = "ТЫ НЕ ДОЛЖЕН ЭТОГО ВИДЕТЬ"
	desc = "Не, серьёзно, это баг!"
	icon = 'mods/_fd/event_tools/icons/landmarks_static.dmi'
	icon_state = "ai_spawn"
	var/character_id = "test"
	var/character_to_spawn = null

/obj/holo_spawner/proc/start_scene()
	new character_to_spawn(src.loc)
	qdel(src)

/mob/living/simple_animal/holo_npc
	name = "TEST"
	desc = "TEST"
	icon = 'mods/_fd/fd_assets/icons/animals/prime_soul.dmi'
	icon_state = "body"
	icon_living = "body"
	icon_dead = "body"
	response_help = "tries to poke"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	movement_cooldown = 0
	maxHealth = 999999
	health = 999999
	a_intent = I_HELP
	faction = "holo"
	status_flags = GODMODE
	does_spin = FALSE
	density = FALSE
	anchored = TRUE
	pass_flags = PASS_FLAG_TABLE|PASS_FLAG_GLASS|PASS_FLAG_GRILLE
	mob_size = MOB_SMALL

	alpha = 0
	color = COLOR_TEAL

	var/seen = FALSE

/mob/living/simple_animal/holo_npc/proc/start_thinking()
	return

/mob/living/simple_animal/holo_npc/Life()
	..()

	if(!seen)
		for(var/mob/living/L in orange(10,src))
			if(L.key && L.client)
				seen = TRUE
				animate(src, 3 SECONDS, alpha = 150)
/*				alpha = 50
				spawn(1 SECOND)
					alpha = 80
				spawn(2 SECONDS)
					alpha = 100
				spawn(3 SECOND)
					alpha = 120
				spawn(4 SECONDS)
					alpha = 150 */
				start_thinking()
				break

/mob/living/simple_animal/holo_npc/ai_announcer
	name = "-SYSTEM MAINFRAME-"
	desc = "Alarm announcement system."
	icon = 'packs/infinity/icons/mob/hologram.dmi'
	icon_state = "Caution"
	icon_living = "Caution"
	icon_dead = "Caution"
	color = "#ffffff"

/mob/living/simple_animal/holo_npc/ai_announcer/Life()
	..()

	if(!seen)
		for(var/mob/living/L in orange(10,src))
			if(L.key && L.client)
				seen = TRUE
				start_thinking()
				break

/mob/living/simple_animal/holo_npc/ai_announcer/start_thinking()
	alpha = 0
	invisibility = 50
/*	spawn(2 SECOND)
		alpha = 0
	spawn(3 SECONDS)
		alpha = 0
	spawn(4 SECOND)
		alpha = 0
	spawn(5 SECONDS)
		alpha = 0*/

	spawn(195 SECOND)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
/*	spawn(196 SECONDS)
		alpha = 80
	spawn(197 SECOND)
		alpha = 100
	spawn(198 SECOND)
		alpha = 120
	spawn(199 SECOND)
		alpha = 150*/

	spawn(200 SECONDS)
		ISay("|ВНИМАНИЕ| ЗАФИКСИРОВАНЫ СЕРЬЁЗНЫЕ СТРУКТУРНЫЕ ПОВРЕЖДЕНИЯ.")
	spawn(204 SECONDS)
		ISay("|ВНИМАНИЕ| ОТКАЗ СИСТЕМЫ ЖИЗНЕОБЕСПЕЧЕНИЯ.")
	spawn(210 SECONDS)
		ISay("|ВНИМАНИЕ| ЧЕТЫРЕ ЧЛЕНА ЭКИПАЖА НУЖДАЮТСЯ В НЕМЕДЛЕННОЙ МЕДИЦИНСКОЙ ПОМОЩИ.")
		playsound(src.loc, 'sound/misc/redalert1.ogg', 100, 1)
	spawn(214 SECONDS)
		ISay("|ВНИМАНИЕ| НЕМЕДЛЕННО ПРОСЛЕДУЙТЕ В БЛИЖАЙШИЕ УКРЕПЛЁННЫЕ ОТСЕКИ КОРАБЛЯ.")
	spawn(220 SECONDS)
		ISay("|ВНИМАНИЕ| ПОВТОРЯЮ, ЭТО НЕ УЧЕБНАЯ ТРЕВОГА.")
	spawn(225 SECONDS)
		playsound(src.loc, 'sound/misc/redalert1.ogg', 100, 1)
		ISay("|ВНИМАНИЕ| ПОВТОРЯЮ, ЭТО НЕ УЧЕБНАЯ-...")
	spawn(226 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/alexey
	name = "Alexey Dostoevsky"
	desc = "Старый адмирал Экспедиционного Корпуса и последний официальный правитель ЦПСС. Похоже, он действительно был готов на всё, чтобы победить..."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "alexey"
	icon_living = "alexey"
	icon_dead = "alexey"

/mob/living/simple_animal/holo_npc/alexey/start_thinking()
	dir = turn(dir,-90)
	ISay("Сахароза, отчёт по ситуации.")
	forceMove(get_step(src, WEST))
	spawn(1 SECOND)
		forceMove(get_step(src, WEST))
	spawn(2 SECONDS)
		forceMove(get_step(src, WEST))
	spawn(15 SECONDS) //Спим, ждём пока Сахар ответит
		dir = turn(dir,-90)
	spawn(16 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(18 SECONDS)
		dir = turn(dir,90)
		visible_message(SPAN_NOTICE("[src] усаживается в капитанское кресло."))
	spawn(22 SECOND)
		ISay("Каков статус заряда?")
	spawn(32 SECONDS) //Ждём ответ
		ISay("Всего минута, значит...сомневаюсь, что этого будет достаточно.")
	spawn(38 SECONDS)
		ISay("Одни против двадцати четырёх. Нас должны были порвать как Тузик Грелку, и то, что этого до сих пор не произошло - УЖЕ чистая удача.")
		visible_message(SPAN_NOTICE("[src] достаёт из пальто помятую сигарету, зажимая её в зубах."))
	spawn(48 SECONDS)
		ISay("Боекомплект сдетонировал, помощи ждать не приходится. Та диона заменила собой двигатели, но этой тяги едва ли хватает на серьёзные манёвры...")
	spawn(56 SECONDS)
		ISay("...взорвём бомбу тут - не даст никакого эффекта. Они легко покинут радиус поражения.")
	spawn(60 SECONDS)
		visible_message(SPAN_NOTICE("[src] вздыхает."))
		ISay("Не стоило вам увязываться за мной. Это не должно было стать братской могилой.")
	spawn(80 SECONDS)
		visible_message(SPAN_NOTICE("[src] хмурится."))
		ISay("И тем не менее, вариантов у нас остаётся немного. Даже попытка тарана может не увеньчаться успехом.")
	spawn(84 SECONDS)
		ISay("Хм?...")
	spawn(90 SECONDS)
		ISay("И как же побег нам поможет?")
	spawn(100 SECONDS)
		ISay("Телепортировать бомбу прямо в начинку их флагмана...это полнейшее безумие. Нас просто расплющит.")
	spawn(116 SECONDS)
		visible_message(SPAN_NOTICE("[src] хватает встроенный в консоль коммуникатор."))
		ISay("Август, мне нужны твои руки у БСД. Франц, оставайся у заряда, будь готов сбрасывать его по команде.")
	spawn(122 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Адамиди, бери остальных под своё командование - постарайтесь выиграть для нас столько времени, сколько возможно.")
	spawn(126 SECONDS)
		ISay("У нас будет ВСЕГО ОДНА попытка.")
	spawn(130 SECONDS)
		ISay("Действуй, 'Синица'.")
	spawn(182 SECONDS)
		ISay("Экипажу приготовиться! Сейчас нас нехило тряхнёт!")
	spawn(192 SECONDS)
		playsound(src.loc, get_sfx("fracture"), 50, 1)
		color = "#970000"
		alpha = 200
	spawn(193 SECONDS)
		color = COLOR_TEAL
		alpha = 150
		icon_state = "alexey_wounded"
	spawn(196 SECONDS)
		visible_message(SPAN_NOTICE("[src] пытается прокашляться, держась одной рукой за штырь в груди."))
		ISay("Сахароза...статус!-")
	spawn(200 SECONDS)
		ISay("Сахароза!...Чёрт возьми!")
	spawn(202 SECONDS)
		ISay("Дышать- не могу-")
	spawn(204 SECONDS)
		ISay("...Кто-нибудь-")
		visible_message(SPAN_NOTICE("[src] жадно глотает воздух, закатывая глаза кверху."))
		color = COLOR_DARK_BLUE_GRAY
	spawn(225 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/sahar
	name = "SAHAR"
	desc = "Высокая, хорошо сложенная девушка, кажущаяся...какой-то неживой. И этот штрихкод с именем на шее?..."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "sahar"
	icon_living = "sahar"
	icon_dead = "sahar"

/mob/living/simple_animal/holo_npc/sahar/start_thinking()
	dir = turn(dir,-90)
	visible_message(SPAN_NOTICE("[src] быстро бегает пальцами по приборной панели."))
	spawn(5 SECONDS)
		ISay("Уровень щитов упал до 39%, системы Геркулес и Тесей выведены из строя.")
	spawn(10 SECONDS)
		ISay("Мне не хотелось бы разочаровывать вас, однако ещё одного подобного гамбита мы не переживём, господин главный командующий.")
	spawn(25 SECONDS) //Ждём, пока Достоевский сядет
		ISay("Оставшиеся юниты, Вавилон и Одиссей - уже переведены на защиту боеголовки. Капитан Минделеев практически закончил с её подготовкой.")
	spawn(30 SECONDS)
		ISay("Если очень сильно повезёт - у нас будет ещё около минуты времени.")
	spawn(61 SECONDS)
		dir = turn(dir,90)
		ISay("При всём уважении, сэр, для каждого из нас - честь оказаться с вами в бою.")
	spawn(64 SECONDS)
		ISay("Да, пускай и в заведомо проигранном - но это лучше чем просто стоять в стороне, когда на кону выживание вида.")
	spawn(70 SECONDS)
		dir = turn(dir,90)
		ISay("Позади нас - матери и будущие жёны, а также их новорождённые дети. Многие из них до сих пор не закончили эвакуацию.")
	spawn(76 SECONDS)
		ISay("И именно поэтому, нам пока рано опускать руки. Сотни людей прямо сейчас молятся за ваш успех, главнокомандующий. Включая экипаж.")
		playsound(src.loc, get_sfx("explosion"), 20, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 100, 1)
		visible_message(SPAN_DANGER("Голограмма мерцает, а участвующие в сцене персонажи внезапно съёживаются. Словно, произошёл какой-то взрыв."))
	spawn(82 SECONDS)
		ISay("Если мы только не попробуем кое-что.")
		visible_message(SPAN_NOTICE("[src] подняла голову, уставившись на изуродованное лицо офицера."))
	spawn(86 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Блюспейс-прыжок.")
	spawn(94 SECONDS)
		ISay("Мы не будем бежать. Вообще-то, даже напротив, мы полетим прямо на них. Воспользовавшись 'моментумом' перемещения и прервав таковое прежде, чем тоннель стабилизируется.")
	spawn(106 SECONDS)
		ISay("И тем не менее, иных идей вы предложить сейчас не можете.")
	spawn(109 SECONDS)
		ISay("Может, игра стоит своих свеч?")
	spawn(130 SECONDS)
		visible_message(SPAN_NOTICE("[src] кивает."))
		dir = turn(dir,-90)
	spawn(132 SECONDS)
		dir = turn(dir,-90)
		visible_message(SPAN_NOTICE("[src] прикладывает руку к наушнику."))
		ISay("Господин Минделеев, вы меня слышите?")
	spawn(137 SECONDS)
		ISay("Мне нужно, чтобы вы сняли с 'синего' все предохранители.")
	spawn(144 SECONDS)
		ISay("Да, я осведомлена о возможных последствиях...да, главнокомандующий Достоевский тоже.")
	spawn(149 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Мы сможем поговорить о сбоях в моей программе позже. Прошу, просто следуйте моим инструкциям.")
	spawn(154 SECONDS)
		ISay("Отлично, начинаем поднимать мощность. Сведите разницу двух полярностей к минимуму.")
	spawn(162 SECONDS)
		ISay("Будьте готовы 'выводить' нас сразу после ударного контакта, хорошо?")
	spawn(167 SECONDS)
		ISay("Пространственный изгиб - тридцать девять и пять десятых процентов.")
	spawn(174 SECONDS)
		visible_message(SPAN_NOTICE("[src] быстро бегает пальцами по приборной панели."))
		ISay("Сигнал пойман, сэр! Стабилизируем туннель!")
	spawn(184 SECONDS)
		ISay("Мягко сказано.")
		visible_message(SPAN_NOTICE("[src] опускает кисть на приборную панель, начиная тянуть на себя один из рычагов."))
	spawn(186 SECONDS)
		ISay("Вход в вуаль через три...")
	spawn(187 SECONDS)
		ISay("Два...")
	spawn(188 SECONDS)
		ISay("Один!")
	spawn(190 SECONDS)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, get_sfx("explosion"), 50, 1)
		playsound(src.loc, get_sfx("shatter"), 100, 1)
	spawn(191 SECONDS)
		ISay("Внимание! Серьёзное структурное повре-!")
		playsound(src.loc, get_sfx("sparks"), 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, get_sfx("sparks"), 100, 1)
	spawn(192 SECONDS)
		playsound(src.loc, get_sfx("glasscrack"), 50, 1)
		playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
	spawn(193 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 50, 1)
		playsound(src.loc, get_sfx("glasscrack"), 100, 1)
		playsound(src.loc, 'sound/effects/EMPulse.ogg', 100, 1)
		var/atom/target = get_edge_target_turf(src, get_dir(src, get_step_away(src, src)))
		throw_at(target, 100, 1)
		color = "#970000"
		alpha = 200
	spawn(194 SECONDS)
		color = COLOR_TEAL
		alpha = 150
		icon_state = "sahar_wounded"
		playsound(src.loc, 'sound/misc/redalert1.ogg', 100, 1)
	spawn(195 SECONDS)
		color = COLOR_DARK_BLUE_GRAY
	spawn(225 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/avgust_real
	name = "Avgust Mindeleev"
	desc = "Гениальный учёный былых лет. Так значит, его последние моменты были на Факеле?.."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "mindeleev"
	icon_living = "mindeleev"
	icon_dead = "mindeleev"

/mob/living/simple_animal/holo_npc/avgust_real/start_thinking()
	dir = turn(dir,-90)
	ISay("Чтоб тебя черти в зад драли, Снигирь, блять!")
	visible_message(SPAN_DANGER("[src] ударяет кулаком по консоли."))
	spawn(3 SECONDS)
		ISay("Если мы ошибёмся хотя бы на одну цифру...")
	spawn(6 SECONDS)
		ISay("...страшно даже представить, что с нами станет.")
	spawn(10 SECONDS)
		ISay("Ну и кто спиздил мой оптимизм?!")
	spawn(12 SECONDS)
		ISay("Неужели мне НАСТОЛЬКО страшно?...")
	spawn(15 SECONDS)
		dir = turn(dir,90)
		visible_message(SPAN_NOTICE("[src] резко поднимает голову."))
		ISay("А? Это ещё что за шум?!")
	spawn(18 SECONDS)
		visible_message(SPAN_NOTICE("[src] опускает взгляд к экрану."))
		ISay("Нет...")
	spawn(20 SECONDS)
		ISay("...Твою же МАТЬ! НЕТ! Ну я же пошутил!")
		visible_message(SPAN_NOTICE("[src] поднимается с кресла."))
	spawn(22 SECONDS)
		ISay("Срань...что же, блять, теперь делать!...")
		visible_message(SPAN_NOTICE("[src] бегает глазами по комнате."))
		forceMove(get_step(src, SOUTH))
	spawn(28 SECONDS)
		ISay("Похе-е-ер!...")
		dir = turn(dir,-90)
		forceMove(get_step(src, WEST))
	spawn(30 SECONDS)
		ISay("Похер!")
		forceMove(get_step(src, WEST))
	spawn(32 SECONDS)
		ISay("ПОХЕР!")
		forceMove(get_step(src, WEST))
	spawn(33 SECONDS)
		ISay("Похер?...")
	spawn(35 SECONDS)
		ISay("ТЫ ЧЁ ТАМ НАКРУТИЛ?!")
	spawn(45 SECONDS)
		ISay("...дабы занизить кол-во используемой отрицательной энергии?")
	spawn(55 SECONDS)
		ISay("А сам-то знаешь!?")
	spawn(57 SECONDS)
		ISay("СУКА-")
		color = "#970000"
		alpha = 200
	spawn(58 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/ai_announcer2
	name = "-SYSTEM MAINFRAME-"
	desc = "Alarm announcement system."
	icon = 'packs/infinity/icons/mob/hologram.dmi'
	icon_state = "Caution"
	icon_living = "Caution"
	icon_dead = "Caution"
	color = "#ffffff"

/mob/living/simple_animal/holo_npc/ai_announcer2/Life()
	..()

	if(!seen)
		for(var/mob/living/L in orange(10,src))
			if(L.key && L.client)
				seen = TRUE
				start_thinking()
				break

/mob/living/simple_animal/holo_npc/ai_announcer2/start_thinking()
	alpha = 0
	invisibility = 50

	spawn(10 SECOND)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)

	spawn(15 SECONDS)
		playsound(src.loc, 'sound/ambience/bsd_alarm.ogg', 100, 1)
		ISay("|ВНИМАНИЕ| ОБНАРУЖЕН ПЕРЕПАД ПРОСТРАНСТВЕННОЙ МАГНИТУДЫ.")
	spawn(20 SECONDS)
		ISay("|ВНИМАНИЕ| НЕМЕДЛЕННО ПОКИНЬТЕ СДЕРЖИВАЮЩУЮ КАМЕРУ.")
	spawn(25 SECONDS)
		playsound(src.loc, 'sound/ambience/bsd_alarm.ogg', 100, 1)
		ISay("|ВНИМАНИЕ| ОТКЛОНЕНИЕ НОРМАЛИ СОСТАВЛЯЕТ 12.9%")
	spawn(30 SECONDS)
		ISay("|ВНИМАНИЕ| ОТКЛОНЕНИЕ НОРМАЛИ СОСТАВЛЯЕТ 21.3%")
	spawn(35 SECONDS)
		ISay("|ВНИМАНИЕ| ОТКАЗ ЯДРА ЦЕНТРИФУГИ")
	spawn(40 SECONDS)
		ISay("|ВНИМАНИЕ| ОТКАЗ СТАБИЛИЗИРУЮЩЕГО ПОЛЯ")
	spawn(45 SECONDS)
		playsound(src.loc, 'sound/ambience/bsd_alarm.ogg', 100, 1)
		ISay("|ВНИМАНИЕ| РАССЛОЕНИЕ ПРОСТРАНСТВЕННЫХ ВЕТВЕЙ")
	spawn(50 SECONDS)
		ISay("|ВНИМАНИЕ| ОТКЛОНЕНИЕ НОРМАЛИ СОСТАВЛЯЕТ 56.4%")
	spawn(55 SECONDS)
		ISay("|ВНИМАНИЕ| НЕМЕДЛЕННО ПОКИНЬТЕ СДЕРЖИВАЮЩУЮ-")
		playsound(src.loc, 'sound/machines/BSD_explosion.ogg', 100, 1)
	spawn(58 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/avgust_fantom
	name = "Avgust Mindeleev"
	desc = "Гениальный учёный былых лет. Так значит, его последние моменты были на Факеле?.."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "mindeleev"
	icon_living = "mindeleev"
	icon_dead = "mindeleev"

/mob/living/simple_animal/holo_npc/avgust_fantom/start_thinking()
	dir = turn(dir,180)
	ISay("Давай же, Август, ты делал это сотни раз...сможешь и в сто первый!")
	spawn(3 SECONDS)
		ISay("Ну да, тебя никогда не просили сделать вполне физическое яблоко неосязаемым, но В ТЕОРИИ же...")
	spawn(6 SECONDS)
		visible_message(SPAN_NOTICE("[src] подкручивает какую-то плату на панели перед собой."))
		ISay("...это не должно быть сложнее голограммы, верно?")
	spawn(10 SECONDS)
		visible_message(SPAN_DANGER("[src] бьёт себя по щеке."))
		ISay("Соберись, последний из Киты, что на тебя вообще нашло?")
	spawn(15 SECONDS)
		ISay("На этом корабле нет никого умнее тебя. Конечно, если из воздуха случайно не материализуется моя точная копия-я-Я-Я-Я!-")
		visible_message(SPAN_NOTICE("[src] в панике подбрасывает в воздух гаечный ключ, роняя его прямо внутрь устройства перед собой."))
	spawn(20 SECONDS)
		ISay("Бля-я-я-я-я-я...")
		visible_message(SPAN_NOTICE("[src] разворачивается к монитору оповещения, его зрачки расширились до небывалых оняме масштабов."))
	spawn(24 SECONDS)
		ISay("Я думаю, что всё ещё не настолько плохо, я могу это-")
	spawn(30 SECONDS)
		ISay("...исправить. Правда же?")
		visible_message(SPAN_NOTICE("[src] резко срывается с места, впопыхах вставая с четверенек на ноги."))
		dir = turn(dir,90)
		forceMove(get_step(src, EAST))
	spawn(32 SECONDS)
		forceMove(get_step(src, EAST))
		ISay("Блять, блять, блять, Б-Л-Я-Т-Ь!")
	spawn(33 SECONDS)
		ISay("Блять?...")
	spawn(35 SECONDS)
		dir = turn(dir,90)
		ISay("ТЫ ЧЁ ТАМ НАКРУТИЛ?!")
	spawn(40 SECONDS)
		ISay("Занизил мощность контроллирующих полей?")
	spawn(49 SECONDS)
		ISay("Нахуя?")
	spawn(57 SECONDS)
		color = "#970000"
		alpha = 200
	spawn(58 SECONDS)
		visible_message(SPAN_WARNING("Резкая вспышка света засветила обе голограммы, расстворяя их подобно муляжу...Что это вообще было?"))
		qdel(src)
