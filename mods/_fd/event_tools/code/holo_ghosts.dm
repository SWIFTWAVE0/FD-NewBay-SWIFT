// Нужен исключительно для того, чтобы активировать остальные спавнеры

/obj/structure/holo_starter
	name = "holo orb"
	desc = "Сфера, содержащая в себе короткий фрагмент воспоминаний на основе когнитивных данных участников."
	var/cutscene_id = "test"
	icon = 'mods/_fd/event_tools/icons/telescience.dmi'
	icon_state = "portal-telegraph-startup"
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
				alpha = 50
				spawn(1 SECOND)
					alpha = 80
				spawn(2 SECONDS)
					alpha = 100
				spawn(3 SECOND)
					alpha = 120
				spawn(4 SECONDS)
					alpha = 150
				start_thinking()
				break

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
	spawn(17 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(20 SECONDS)
		dir = turn(dir,90)
		visible_message(SPAN_NOTICE("[src] усаживается в капитанское кресло."))
	spawn(22 SECOND)
		ISay("Каков статус заряда?")
	spawn(32 SECONDS) //Ждём ответ
		ISay("Всего минуту, значит...сомневаюсь, что этого будет достаточно.")
	spawn(38 SECONDS)
		ISay("Одни против двадцати четырёх. Нас должны были порвать как Тузик Грелку, и единственная причина, по которой этого ещё не произошло - это УЖЕ чистая удача.")
		visible_message(SPAN_NOTICE("[src] достаёт из пальто помятую сигарету, зажимая её в зубах."))
	spawn(48 SECONDS)
		ISay("Боекомплект сдетонировал, помощи ждать не приходится. Та диона заменила собой двигатели, но этой тяги едва ли хватает на серьёзные манёвры...")
	spawn(52 SECONDS)
		ISay("...взорвём бомбу тут - не даст никакого эффекта. Они легко покинут радиус поражения.")
	spawn(56 SECONDS)
		visible_message(SPAN_NOTICE("[src] вздыхает."))
		ISay("Не стоило вам увязываться за мной. Это не должно было стать братской могилой.")
	spawn(70 SECONDS)
		visible_message(SPAN_NOTICE("[src] хмурится."))
		ISay("И тем не менее, вариантов у нас остаётся немного. Даже попытка тарана может не увеньчаться успехом.")
	spawn(75 SECONDS)
		ISay("Хм?...")
	spawn(81 SECONDS)
		ISay("И как же побег нам поможет?")
	spawn(86 SECONDS)
		ISay("Телепортировать бомбу прямо в начинку их флагмана...безумие. Если нас не подведёт 'синий' - просчёта на секунду уже будет достаточно, чтобы пустить жизни по ветру.")
	spawn(95 SECONDS)
		visible_message(SPAN_NOTICE("[src] хватает встроенный в консоль коммуникатор."))
		ISay("Август, мне нужны твои руки у БСД. Франц, оставайся у заряда, будь готов сбрасывать его по команде.")
	spawn(100 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Адамиди, Суров, Эндсли, Рузвельт - постарайтесь выиграть для нас столько времени, сколько возможно. У нас нет права на ошибку.")
	spawn(103 SECONDS)
		ISay("Действуй, 'Синица'.")
	spawn(122 SECONDS)
		ISay("Экипажу приготовиться! Совершаем прыжок!")
	spawn(138 SECONDS)
		playsound(src.loc, get_sfx("fracture"), 50, 1)
		color = "#970000"
		alpha = 200
	spawn(139 SECONDS)
		color = COLOR_TEAL
		alpha = 150
		icon_state = "alexey_wounded"
	spawn(146 SECONDS)
		visible_message(SPAN_NOTICE("[src] пытается прокашляться, держась одной рукой за штырь в груди."))
		ISay("Сахароза...статус!-")
	spawn(148 SECONDS)
		ISay("Сахароза!...Чёрт возьми!")
	spawn(150 SECONDS)
		ISay("Дышать- не могу-")

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
		ISay("Оставшиеся юниты, Вавилон и Одиссей - уже переведены на защиту боеголовки. Капитан Минделеев практически закончил с его подготовкой.")
	spawn(30 SECONDS)
		ISay("Если очень сильно повезёт - у нас будет ещё около минуты времени.")
	spawn(54 SECONDS)
		dir = turn(dir,90)
	spawn(56 SECONDS)
		ISay("При всём уважении, сэр, для каждого из нас - честь оказаться с вами в бою.")
	spawn(60 SECONDS)
		ISay("Да, пускай и в заведомо проигранном - но это лучше чем просто стоять в стороне, когда на кону выживание вида.")
	spawn(65 SECONDS)
		dir = turn(dir,90)
		ISay("Позади нас - матери и будущие жёны, а также их новорождённые дети. Многие из них до сих пор не закончили эвакуацию.")
	spawn(68 SECONDS)
		ISay("И именно поэтому, нам пока рано опускать руки. Сотни людей прямо сейчас молятся за ваш успех, главнокомандующий. Включая экипаж.")
		playsound(src.loc, get_sfx("explosion"), 20, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 100, 1)
		visible_message(SPAN_DANGER("Голограмма мерцает, а участвующие в сцене персонажи внезапно съёживаются. Словно, произошёл какой-то взрыв."))
	spawn(74 SECONDS)
		ISay("Если мы только не попробуем кое-что.")
		visible_message(SPAN_NOTICE("[src] подняла голову, уставившись на изуродованное лицо офицера."))
	spawn(78 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Блюспейс-прыжок.")
	spawn(84 SECONDS)
		ISay("Мы не будем бежать. Вообще-то, даже напротив, мы полетим прямо на них. Воспользовавшись 'моментумом' перемещения и прервав таковое прежде, чем тоннель стабилизируется.")
	spawn(92 SECONDS)
		ISay("Так почему бы не рискнуть ещё раз? Разве вы не сами сказали, что других вариантов у нас нет?")
	spawn(103 SECONDS)
		visible_message(SPAN_NOTICE("[src] кивает."))
		dir = turn(dir,-90)
	spawn(104 SECONDS)
		dir = turn(dir,-90)
		visible_message(SPAN_NOTICE("[src] прикладывает руку к наушнику."))
		ISay("Господин Минделеев, вы меня слышите?")
	spawn(106 SECONDS)
		ISay("Мне нужно, чтобы вы сняли с 'синего' предохранители.")
	spawn(110 SECONDS)
		ISay("Да, я осведомлена о возможных последствиях...да, главнокомандующий Достоевский тоже.")
	spawn(112 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 10, 1)
		playsound(src.loc, 'sound/effects/basscannon.ogg', 30, 1)
		ISay("Это наш шанс. И чем дольше мы раздумываем над его валидностью - тем меньше он становится.")
	spawn(116 SECONDS)
		ISay("Отлично, теперь начинайте поднимать мощность. Сведите разницу двух полярностей к минимуму, будьте готовы 'выводить' нас сразу после ударного контакта, хорошо?")
	spawn(119 SECONDS)
		visible_message(SPAN_NOTICE("[src] быстро бегает пальцами по приборной панели."))
		ISay("Сигнал пойман, сэр! Стабилизируем туннель!")
	spawn(126 SECONDS)
		ISay("Давайте понадеемся, что машины не ошибаются.")
		visible_message(SPAN_NOTICE("[src] опускает кисть на приборную панель, начиная тянуть на себя один из рычагов."))
	spawn(130 SECONDS)
		ISay("Вход в вуаль через три...")
	spawn(131 SECONDS)
		ISay("Два...")
	spawn(132 SECONDS)
		ISay("Один!")
	spawn(136 SECONDS)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, get_sfx("explosion"), 50, 1)
		playsound(src.loc, get_sfx("shatter"), 100, 1)
	spawn(137 SECONDS)
		ISay("Внимание! Серьёзное структурное повре-!")
		playsound(src.loc, get_sfx("sparks"), 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, get_sfx("sparks"), 100, 1)
	spawn(138 SECONDS)
		playsound(src.loc, get_sfx("glasscrack"), 50, 1)
		playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 100, 1)
	spawn(139 SECONDS)
		playsound(src.loc, get_sfx("explosion"), 50, 1)
		playsound(src.loc, 'sound/weapons/smash.ogg', 50, 1)
		playsound(src.loc, get_sfx("glasscrack"), 100, 1)
		playsound(src.loc, 'sound/effects/EMPulse.ogg', 100, 1)
		var/atom/target = get_edge_target_turf(src, get_dir(src, get_step_away(src, src)))
		throw_at(target, 200, 1)
		color = "#970000"
		alpha = 200
	spawn(140 SECONDS)
		color = COLOR_TEAL
		alpha = 150
		icon_state = "sahar_wounded"
		playsound(src.loc, 'sound/misc/redalert1.ogg', 100, 1)
	spawn(141 SECONDS)
		color = COLOR_DARK_BLUE_GRAY
