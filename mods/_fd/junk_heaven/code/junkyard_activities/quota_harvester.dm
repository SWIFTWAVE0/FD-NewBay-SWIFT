
/obj/item
	var/quota_worth = 0
	var/quota_type = 1 // 1 - junk; 2 - minerals

/obj/structure/quota_harvester
	name = "Old quota harvester"
	desc = "Hm, is it still working?"
	icon = 'mods/_fd/junk_heaven/icons/junkyard_structures.dmi'
	icon_state = "trades0"
	anchored = TRUE
	density = TRUE

	var/activated = FALSE
	var/active = FALSE
	var/current_quota = 0
	var/needed = 0
	var/leaving = FALSE
	var/timer = 1000

/obj/structure/quota_harvester/proc/run_timer()
	set waitfor = 0
	var/T = timer
	while(T > 0)
		sleep(1 SECOND)
		playsound(loc, 'sound/items/timer.ogg', 50)
		T--
	src.audible_message("<b>\The [src]</b> says, 'КВОТА НЕ БЫЛА ДОСТИГНУТА К УКАЗАННОМУ СРОКУ, <span class='danger'>ПРОИЗВОЖУ ЛИКВИДАЦИЮ ЛИЦЕНЗИИ.</span>'")
	sleep(3)
	explosion(src.loc, 7, EX_ACT_HEAVY)
	qdel(src)

/obj/structure/quota_harvester/Initialize()
	START_PROCESSING(SSobj, src)
	return ..()

/obj/structure/quota_harvester/New()
	. = ..()
	needed = pick(50,80,100)

/obj/structure/quota_harvester/on_update_icon()
	if(active)
		icon_state = "trades1"
	if(!active)
		icon_state = "trades0"
	if(activated)
		icon_state = "trades_deploying"
	if(leaving)
		icon_state = "trades_collecting"

/obj/structure/quota_harvester/proc/leave_animation_cancel(mob/user)
	leaving = FALSE
	update_icon()
	active = FALSE
	update_icon()
	fly_away()

/obj/structure/quota_harvester/proc/activating(mob/user)
	activated = FALSE
	update_icon()

/obj/structure/quota_harvester/Process(mob/user)

	if(current_quota >= needed)
		leaving = TRUE
		update_icon()

		addtimer(new Callback(src, .proc/leave_animation_cancel, user), 5)

/obj/structure/quota_harvester/proc/fly_away()
	pixel_y = 5
	src.alpha = 200
	sleep(2)
	pixel_y = 8
	src.alpha = 150
	sleep(2)
	pixel_y = 12
	src.alpha = 100
	sleep(2)
	pixel_y = 15
	src.alpha = 50
	sleep(2)
	src.alpha = 0
	sleep(20)
	spawn_money(rand(5000,10000),src.loc)
	qdel(src)

/obj/structure/quota_harvester/attack_hand(mob/user)
	if(active)
		to_chat(user, "<span class='notice'>[src] уже активен!</span>")
		return
	if(!active)
		activated = TRUE
		update_icon()

		addtimer(new Callback(src, .proc/activating, user), 15)
		active = TRUE
		run_timer()
		update_icon()

/obj/structure/quota_harvester/attackby(obj/item/I, mob/user)

	if(active)
		if(I.quota_worth <= 0 && I.quota_type == 1)
			src.audible_message("<b>\The [src]</b> says, 'Данный объект <span class='danger'>не несёт никакой физической ценности</span> для компании.'")
		if(I.quota_worth > 0 && I.quota_type == 1)
			if(do_after(user, 10))
				var/obj/item/junk_rare = I
				current_quota += junk_rare.quota_worth
				qdel(junk_rare)
				src.audible_message("<b>\The [src]</b> says, 'Ваш вклад ценится компанией.'")
				sleep(10)
				src.audible_message("<b>\The [src]</b> says, 'Ваша текущая установленная квота: <span class='danger'>[current_quota]/[needed]</span>'")
		else
			src.audible_message("<b>\The [src]</b> says, 'Компания <span class='danger'>не заинтересована</span> в получении объектов подобного вида.'")
			return

/obj/structure/quota_harvester/mining
	name = "mineral quota harvester"

/obj/structure/quota_harvester/mining/attackby(obj/item/I, mob/user)

	if(active)
		if(I.quota_worth <= 0 && I.quota_type == 2)
			src.audible_message("<b>\The [src]</b> says, 'Данный объект <span class='danger'>не несёт никакой физической ценности</span> для компании.'")
		if(I.quota_worth > 0 && I.quota_type == 2)
			if(do_after(user, 10))
				var/obj/item/mineral_rare = I
				current_quota += mineral_rare.quota_worth
				qdel(mineral_rare)
				src.audible_message("<b>\The [src]</b> says, 'Ваш вклад ценится компанией.'")
				sleep(10)
				src.audible_message("<b>\The [src]</b> says, 'Ваша текущая установленная квота: <span class='danger'>[current_quota]/[needed]</span>'")
		else
			src.audible_message("<b>\The [src]</b> says, 'Компания <span class='danger'>не заинтересована</span> в получении объектов подобного вида.'")
			return

/obj/structure/quota_harvester/zone_trigger
	timer = 6000

/obj/structure/quota_harvester/zone_trigger/New()
	. = ..()
	needed = pick(100,200,250)

/obj/structure/quota_harvester/zone_trigger/Process(mob/user)

	if(!active && (locate(/mob/living/carbon/human) in orange(6, src)))
		activated = TRUE
		update_icon()

		addtimer(new Callback(src, .proc/activating, user), 5)
		active = TRUE
		run_timer()
		update_icon()

	. = ..()
