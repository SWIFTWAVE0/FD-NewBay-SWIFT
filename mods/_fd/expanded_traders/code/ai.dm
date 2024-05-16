
/obj/overmap/visitable/ship/torch/Initialize()
	. = ..()
	add_starter_trader()

/obj/overmap/visitable/ship/torch/proc/add_starter_trader()
	var/trader_type = /datum/trader/trading_beacon/starter
	GLOB.traders[trader_type] = new trader_type
	GLOB.trader_types += trader_type

/datum/trader/trading_beacon/engineering
	origin = "Инженерный Маяк"

	possible_trading_items = list(/obj/machinery/portable_atmospherics/canister/nitrogen	= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/oxygen		= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/hydrogen		= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/phoron		= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/carbon_dioxide	= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/air			= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/helium		= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/methyl_bromide	= TRADER_THIS_TYPE,
								/obj/machinery/portable_atmospherics/canister/chlorine		= TRADER_THIS_TYPE,
								/obj/item/storage/toolbox/syndicate							= TRADER_THIS_TYPE,
								/obj/item/stock_parts/scanning_module/adv					= TRADER_THIS_TYPE,
								/obj/item/stock_parts/manipulator/pico						= TRADER_THIS_TYPE,
								/obj/item/stock_parts/micro_laser/high						= TRADER_THIS_TYPE,
								/obj/item/stock_parts/matter_bin/adv						= TRADER_THIS_TYPE,
								/obj/item/stock_parts/capacitor/adv							= TRADER_THIS_TYPE,
								/obj/item/stack/material/aluminium/fifty					= TRADER_THIS_TYPE,
								/obj/item/stack/material/steel/fifty 						= TRADER_THIS_TYPE,
								/obj/item/stack/material/plasteel/fifty						= TRADER_THIS_TYPE,
								/obj/item/stack/material/wood/fifty							= TRADER_THIS_TYPE,
								/obj/item/stack/material/glass/reinforced/fifty 			= TRADER_THIS_TYPE,
								/obj/item/stack/material/glass/fifty						= TRADER_THIS_TYPE,
								/obj/item/clothing/glasses/material							= TRADER_THIS_TYPE,
								/obj/item/material/knife/folding/swiss/engineer				= TRADER_THIS_TYPE,
								/obj/item/inflatable_dispenser 								= TRADER_THIS_TYPE,
								/obj/item/taperoll/engineering								= TRADER_THIS_TYPE,
								/obj/item/tank/jetpack/carbondioxide						= TRADER_THIS_TYPE,
								/obj/item/tank/air											= TRADER_THIS_TYPE,
								/obj/item/welder_tank/huge									= TRADER_THIS_TYPE,
								/obj/structure/reagent_dispensers/fueltank 					= TRADER_THIS_TYPE)


/datum/trader/trading_beacon/starter
	possible_wanted_items = list(/obj/item/device/						= TRADER_SUBTYPES_ONLY,
								/obj/item/device/tape/random			= TRADER_BLACKLIST,
								/obj/item/device/assembly				= TRADER_BLACKLIST_ALL,
								/obj/item/device/assembly_holder		= TRADER_BLACKLIST_ALL,
								/obj/item/device/encryptionkey/syndicate = TRADER_BLACKLIST,
								/obj/item/tank/phoron/onetankbomb		= TRADER_BLACKLIST,
								/obj/item/device/radio					= TRADER_BLACKLIST_ALL,
								/obj/item/modular_computer/pda			= TRADER_BLACKLIST_SUB,
								/obj/item/device/uplink					= TRADER_BLACKLIST,
								/obj/item/stack/material/phoron			= TRADER_ALL)
	possible_trading_items = list(/obj/item/storage/bag					= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/bag/cash/infinite		= TRADER_BLACKLIST,
								/obj/item/storage/backpack				= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/backpack/cultpack		= TRADER_BLACKLIST,
								/obj/item/storage/backpack/holding		= TRADER_BLACKLIST,
								/obj/item/storage/backpack/satchel/grey/withwallet = TRADER_BLACKLIST,
								/obj/item/storage/backpack/satchel/syndie_kit = TRADER_BLACKLIST_ALL,
								/obj/item/storage/backpack/chameleon	= TRADER_BLACKLIST,
								/obj/item/storage/backpack/ert			= TRADER_BLACKLIST_ALL,
								/obj/item/storage/backpack/dufflebag/syndie = TRADER_BLACKLIST_SUB,
								/obj/item/gun/energy/lasertag			= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/briefcase				= TRADER_THIS_TYPE,
								/obj/item/device/bot_kit				= TRADER_THIS_TYPE,
								/obj/item/book							= TRADER_SUBTYPES_ONLY,
								/obj/item/device/scanner				= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/fancy					= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/secure/briefcase		= TRADER_THIS_TYPE,
								/obj/item/storage/plants				= TRADER_THIS_TYPE,
								/obj/item/storage/ore					= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/lunchbox				= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/mre					= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/toolbox				= TRADER_SUBTYPES_ONLY,
								/obj/item/storage/wallet				= TRADER_THIS_TYPE,
								/obj/item/storage/photo_album			= TRADER_THIS_TYPE,
								/obj/item/mag_table_plate				= TRADER_THIS_TYPE,
								/obj/item/clothing/glasses				= TRADER_SUBTYPES_ONLY,
								/obj/item/clothing/glasses/hud			= TRADER_BLACKLIST_ALL,
								/obj/item/clothing/glasses/blindfold/tape = TRADER_BLACKLIST,
								/obj/item/clothing/glasses/chameleon	= TRADER_BLACKLIST,
								/obj/item/stack/material/glass			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/iron			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/sandstone		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/marble			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/diamond		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/uranium		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/phoron			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/plastic		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/gold			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/silver			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/platinum		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/mhydrogen		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/tritium		= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/osmium			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/steel			= TRADER_SUBTYPES_ONLY,
								/obj/item/stack/material/plasteel		= TRADER_SUBTYPES_ONLY,
								/obj/machinery/mining					= TRADER_SUBTYPES_ONLY,
								/obj/structure/AIcore					= TRADER_THIS_TYPE,
								/obj/structure/mopbucket				= TRADER_THIS_TYPE,
								/obj/structure/ore_box					= TRADER_THIS_TYPE,
								/obj/structure/coatrack					= TRADER_THIS_TYPE,
								/obj/item/bee_pack						= TRADER_THIS_TYPE,
								/obj/item/bee_smoker					= TRADER_THIS_TYPE,
								/obj/item/beehive_assembly				= TRADER_THIS_TYPE,
								/obj/item/honey_frame					= TRADER_THIS_TYPE,
								/obj/structure/dispenser				= TRADER_SUBTYPES_ONLY,
								/obj/structure/filingcabinet			= TRADER_THIS_TYPE,
								/obj/structure/safe						= TRADER_THIS_TYPE,
								/obj/structure/plushie					= TRADER_SUBTYPES_ONLY,
								/obj/item/a_gift						= TRADER_THIS_TYPE,
								/obj/item/contraband/poster				= TRADER_THIS_TYPE,
								/obj/item/storage/pill_bottle/bicaridine = TRADER_THIS_TYPE,
								/obj/item/storage/pill_bottle/kelotane	= TRADER_THIS_TYPE,
								/obj/item/storage/pill_bottle/dylovene	= TRADER_THIS_TYPE,
								/obj/item/storage/pill_bottle/dexalin	= TRADER_THIS_TYPE,
								/obj/item/storage/pill_bottle/citalopram = TRADER_THIS_TYPE)

/datum/trader/trading_beacon/starter/select_spawn_location()
	var/turf/torch = get_turf(locate(/obj/overmap/visitable/ship/torch))
	if(!torch)
		stack_trace("TORCH NOT FOUND IN trading_beacon/starter/select_spawn_location()")
		return ..()

	var/list/turfs = orange(2, torch)
	for(var/turf/T in shuffle(turfs))
		var/valid = TRUE
		for(var/obj/overmap/event/E in T)
			if(E)
				valid = FALSE
				break
		for(var/obj/overmap/trading/M in T)
			if(M)
				valid = FALSE
				break
		for(var/obj/overmap/visitable/V in T)
			if(V)
				valid = FALSE
				break
		if(valid)
			return T

	stack_trace("NO ROOM FOR THE /datum/trader/trading_beacon/starter, PLACING ON DEFAULT LOCATION")
	return ..()
