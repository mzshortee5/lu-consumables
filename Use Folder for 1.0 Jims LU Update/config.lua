print("^2LU^7-^2Consumables ^7v^41^7.^45 ^7- ^2Consumables Script by ^1Eliza Lasal^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/W24wFdUXU9

-- Screen Effects: Alien, Weed, Trever, Turbo, Rampage, Focus, Nightvision, Thermal, Heal, Stamina
-- Body Effect: Heal, Armor, Stamina, Kill, OD

Config = {
	Debug = false,
	Core = "qb-core",
	Inv = "ox",
	Notify = "qb",
	UseProgbar = true,
	ProgressBar = "qb",
    
	--Below only changes the time for Nightvision
	Effectmin = 8000,
	Effectmax = 10000,
	
	Consumables = {
		--Food Example
		["sandwich"] = { 		emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},

		--Drink Example
		["sprite"] = { 			emote = "drink", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(10,20), }},
		["coffee"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(10,20), }},

		--Drug Example
		["bong"] = { 		emote = "smoke4",	canRun = true, time = math.random(5000, 6000), stress = math.random(30, 40), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effect = "kill", widepupils = true, canOD = true } },
		["joint"] = { 			emote = "joint",	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		--Combo Example 
		["water_bottle"] = { 	emote = "drink", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), hunger = math.random(10,20),}},

		--Alcohol Example
		["beer"] = { 			emote = "beer", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["wine"] = { 			emote = "wine", 	    canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["whiskey"] = { 		emote = "whiskey", 	    canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},

	},
	
	Emotes = {
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},				
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_ing_coffeecup_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0,0.0,0.06,0.0,15.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger","Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement ={0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteMoving = true }},
				
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["smoke4"] = { "amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},	
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteLoop = true, EmoteMoving = true }},
		
		--Custom Emotes Very easy to add if you look at your emotemenu options you add your own. 
		["whiskey"] = {
			"amb@world_human_drinking@coffee@male@idle_a",
			"idle_c",
			"Whiskey",
			AnimationOptions = {
				Prop = 'prop_drink_whisky',
				PropBone = 28422,
				PropPlacement = {
					0.01,
					-0.01,
					-0.06,
					0.0,
					0.0,
					0.0
				},
				EmoteLoop = true,
				EmoteMoving = true,
			}
		},
	    ["bong2"] = {
			"anim@safehouse@bong",
			"bong_stage3",
			"Bong 2",
			AnimationOptions = {
				Prop = 'xm3_prop_xm3_bong_01a',
				PropBone = 18905,
				PropPlacement = {
					0.10,
					-0.25,
					0.0,
					95.0,
					190.0,
					180.0
				},
				EmoteLoop = true,
				EmoteMoving = true,
			}},
		["vape"] = {
			"amb@world_human_smoking@male@male_b@base",
			"base",
			"Vape",
			AnimationOptions = {
				Prop = 'ba_prop_battle_vape_01',
				PropBone = 28422,
				PropPlacement = {-0.0290, 0.0070, -0.0050, 91.0, 270.0, -360.00},
				EmoteMoving = true,
				EmoteLoop = true,
				-- PtfxAsset = "scr_agencyheistb",
				-- PtfxName = "scr_agency3b_elec_box",
				-- PtfxNoProp = true,
				-- PtfxBone = 31086,
				-- PtfxPlacement = {0.0, 0.170, 0.0, 0.0, 0.0, 0.0, 1.4},
				-- PtfxInfo = Config.Languages[Config.MenuLanguage]['vape'],
				-- PtfxWait = 0.8,
				-- PtfxCanHold = true
			}},
		["sheesh"] = {"custom@sheeeeesh", "sheeeeesh", "Sheesh", AnimationOptions =
			{
				Prop = "prop_syringe_01", PropBone = 28422, PropPlacement ={0.015, -0.01, 0.003, 55.0, 0, 130.0},
				EmoteMoving = true,
				EmoteDuration = 8000,
			}},
	}
}
