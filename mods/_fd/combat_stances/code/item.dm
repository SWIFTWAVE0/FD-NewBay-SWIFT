/obj/item
	var/fail_chance = 50
	/// Список всех видов спец-ударов у предмета
	var/list/melee_strikes
	/// Текущий выбранный спец-удар
	var/singleton/combo_strike/melee_strike

/obj/item/Initialize()
	. = ..()
	if(melee_strikes)
		melee_strikes += null
		for(var/type in melee_strikes)
			if(isnull(type))
				continue
			var/strike = new type
			melee_strikes -= type
			melee_strikes += strike

/obj/item/attack_self(mob/living/carbon/user)
	. = ..()

	var/obj/item/melee/I

	if(melee_strikes && !istype(I, /obj/item/melee/energy))
		swap_stances(user)

/obj/item/proc/swap_stances(mob/user)
	if(!melee_strikes || melee_strikes.len == 1)
//		verbs -= /obj/item/proc/verb_swap_stances
		return
	var/singleton/combo_strike/stance_curr = melee_strikes[1]
	melee_strikes -= stance_curr
	melee_strikes += stance_curr
	stance_curr = melee_strikes[1]
	melee_strike = stance_curr
	if(stance_curr == null)
		to_chat(user,SPAN_DANGER("Вы приняли стандартную стойку для вашего оружия"))
		return
	stance_curr.strike_active(user)

/obj/item/proc/has_melee_strike(mob/user)
	if(isnull(melee_strikes))
		return null
	if(isnull(melee_strike))
		melee_strike = melee_strikes[1]
		if(!isnull(melee_strike))
			melee_strike.strike_active(user)

	return melee_strike

/obj/item/use_before(atom/target, mob/living/user, click_parameters)
	if(!isnull(melee_strike) && !user.skill_check(SKILL_COMBAT, SKILL_EXPERIENCED) && prob(src.fail_chance))
		user.drop_from_inventory(src)
		to_chat(user,"<span class = 'danger'>[user] пытается провернуть особую атаку, но [src] неуклюже валится из рук!</span>")
	..()

/obj/item/resolve_attackby(atom/atom, mob/living/user, click_params)
	..()

	if(has_melee_strike(user))
		return melee_strike.do_pre_strike(user, atom, src, click_params)
