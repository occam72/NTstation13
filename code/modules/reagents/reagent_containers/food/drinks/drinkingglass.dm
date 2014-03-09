/obj/item/weapon/reagent_containers/food/drinks/drinkingglass
	name = "drinking glass"
	desc = "Your standard drinking glass. Stores 50 of any reagent."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "glass"
	amount_per_transfer_from_this = 10
	volume = 50
	var/decor = 1

	on_reagent_change()
		update_icon()

	examine()
		set src in view()
		..()
		if(!(usr in view(2)) && usr != loc)
			return
		if(reagents && reagents.reagent_list.len)
			usr << "Looks like it's [reagents.get_master_reagent_id()]."

	update_icon()
		overlays.Cut()

		if(reagents.total_volume && !decor)
			var/image/filling = image('icons/obj/reagentfillings.dmi', src, "[icon_state]10")

			var/percent = round((reagents.total_volume / volume) * 100)
			switch(percent)
				if(0 to 9)		filling.icon_state = "[icon_state]-10"
				if(10 to 24) 	filling.icon_state = "[icon_state]10"
				if(25 to 49)	filling.icon_state = "[icon_state]25"
				if(50 to 74)	filling.icon_state = "[icon_state]50"
				if(75 to 79)	filling.icon_state = "[icon_state]75"
				if(80 to 90)	filling.icon_state = "[icon_state]80"
				if(91 to INFINITY)	filling.icon_state = "[icon_state]100"

			filling.icon += mix_color_from_reagents(reagents.reagent_list)
			overlays += filling
			
		if (reagents.total_volume && decor)
			//mrid = R.get_master_reagent_id()
			switch(reagents.get_master_reagent_id())
				if("beer")
					icon_state = "beerglass"
					name = "Beer glass"
					desc = "A freezing pint of beer"
				if("beer2")
					icon_state = "beerglass"
					name = "Beer glass"
					desc = "A freezing pint of beer"
				if("ale")
					icon_state = "aleglass"
					name = "Ale glass"
					desc = "A freezing pint of delicious Ale"
				if("milk")
					icon_state = "glass_white"
					name = "Glass of milk"
					desc = "White and nutritious goodness!"
				if("cream")
					icon_state  = "glass_white"
					name = "Glass of cream"
					desc = "Ewwww..."
				if("chocolate")
					icon_state  = "chocolateglass"
					name = "Glass of chocolate"
					desc = "Tasty"
				if("lemon")
					icon_state  = "lemonglass"
					name = "Glass of lemon"
					desc = "Sour..."
				if("cola")
					icon_state  = "glass_brown"
					name = "Glass of Space Cola"
					desc = "A glass of refreshing Space Cola"
				if("nuka_cola")
					icon_state = "nuka_colaglass"
					name = "Nuka Cola"
					desc = "Don't cry, Don't raise your eye, It's only nuclear wasteland"
				if("orangejuice")
					icon_state = "glass_orange"
					name = "Glass of Orange juice"
					desc = "Vitamins! Yay!"
				if("tomatojuice")
					icon_state = "glass_red"
					name = "Glass of Tomato juice"
					desc = "Are you sure this is tomato juice?"
				if("blood")
					icon_state = "glass_red"
					name = "Glass of Tomato juice"
					desc = "Are you sure this is tomato juice?"
				if("limejuice")
					icon_state = "glass_green"
					name = "Glass of Lime juice"
					desc = "A glass of sweet-sour lime juice."
				if("whiskey")
					icon_state = "whiskeyglass"
					name = "Glass of whiskey"
					desc = "The silky, smokey whiskey goodness inside the glass makes the drink look very classy."
				if("gin")
					icon_state = "ginvodkaglass"
					name = "Glass of gin"
					desc = "A crystal clear glass of Griffeater gin."
				if("vodka")
					icon_state = "ginvodkaglass"
					name = "Glass of vodka"
					desc = "The glass contain wodka. Xynta."
				if("goldschlager")
					icon_state = "ginvodkaglass"
					name = "Glass of goldschlager"
					desc = "100 proof that teen girls will drink anything with gold in it."
				if("wine")
					icon_state = "wineglass"
					name = "Glass of wine"
					desc = "A very classy looking drink."
				if("cognac")
					icon_state = "cognacglass"
					name = "Glass of cognac"
					desc = "Damn, you feel like some kind of French aristocrat just by holding this."
				if ("kahlua")
					icon_state = "kahluaglass"
					name = "Glass of RR coffee Liquor"
					desc = "DAMN, THIS THING LOOKS ROBUST"
				if("vermouth")
					icon_state = "vermouthglass"
					name = "Glass of Vermouth"
					desc = "You wonder why you're even drinking this straight."
				if("tequilla")
					icon_state = "tequillaglass"
					name = "Glass of Tequilla"
					desc = "Now all that's missing is the weird colored shades!"
				if("patron")
					icon_state = "patronglass"
					name = "Glass of Patron"
					desc = "Drinking patron in the bar, with all the subpar ladies."
				if("rum")
					icon_state = "rumglass"
					name = "Glass of Rum"
					desc = "Now you want to Pray for a pirate suit, don't you?"
				if("gintonic")
					icon_state = "gintonicglass"
					name = "Gin and Tonic"
					desc = "A mild but still great cocktail. Drink up, like a true Englishman."
				if("whiskeycola")
					icon_state = "whiskeycolaglass"
					name = "Whiskey Cola"
					desc = "An innocent-looking mixture of cola and Whiskey. Delicious."
				if("whiterussian")
					icon_state = "whiterussianglass"
					name = "White Russian"
					desc = "A very nice looking drink. But that's just, like, your opinion, man."
				if("screwdrivercocktail")
					icon_state = "screwdriverglass"
					name = "Screwdriver"
					desc = "A simple, yet superb mixture of Vodka and orange juice. Just the thing for the tired engineer."
				if("bloodymary")
					icon_state = "bloodymaryglass"
					name = "Bloody Mary"
					desc = "Tomato juice, mixed with Vodka and a lil' bit of lime. Tastes like liquid murder."
				if("martini")
					icon_state = "martiniglass"
					name = "Classic Martini"
					desc = "Damn, the bartender even stirred it, not shook it."
				if("vodkamartini")
					icon_state = "martiniglass"
					name = "Vodka martini"
					desc ="A bastardisation of the classic martini. Still great."
				if("gargleblaster")
					icon_state = "gargleblasterglass"
					name = "Pan-Galactic Gargle Blaster"
					desc = "Does... does this mean that Arthur and Ford are on the station? Oh joy."
				if("bravebull")
					icon_state = "bravebullglass"
					name = "Brave Bull"
					desc = "Tequilla and Coffee liquor, brought together in a mouthwatering mixture. Drink up."
				if("tequillasunrise")
					icon_state = "tequillasunriseglass"
					name = "Tequilla Sunrise"
					desc = "Oh great, now you feel nostalgic about sunrises back on Terra..."
				if("toxinsspecial")
					icon_state = "toxinsspecialglass"
					name = "Toxins Special"
					desc = "Whoah, this thing is on FIRE"
				if("beepskysmash")
					icon_state = "beepskysmashglass"
					name = "Beepsky Smash"
					desc = "Heavy, hot and strong. Just like the Iron fist of the LAW."
				if("doctorsdelight")
					icon_state = "doctorsdelightglass"
					name = "Doctor's Delight"
					desc = "A healthy mixture of juices, guaranteed to keep you healthy until the next toolboxing takes place."
				if("manlydorf")
					icon_state = "manlydorfglass"
					name = "The Manly Dorf"
					desc = "A manly concotion made from Ale and Beer. Intended for true men only."
				if("irishcream")
					icon_state = "irishcreamglass"
					name = "Irish Cream"
					desc = "It's cream, mixed with whiskey. What else would you expect from the Irish?"
				if("cubalibre")
					icon_state = "cubalibreglass"
					name = "Cuba Libre"
					desc = "A classic mix of rum and cola."
				if("b52")
					icon_state = "b52glass"
					name = "B-52"
					desc = "Kahlua, Irish Cream, and cognac. You will get bombed."
				if("atomicbomb")
					icon_state = "atomicbombglass"
					name = "Atomic Bomb"
					desc = "Nanotrasen cannot take legal responsibility for your actions after imbibing."
				if("longislandicedtea")
					icon_state = "longislandicedteaglass"
					name = "Long Island Iced Tea"
					desc = "The liquor cabinet, brought together in a delicious mix. Intended for middle-aged alcoholic women only."
				if("threemileisland")
					icon_state = "threemileislandglass"
					name = "Three Mile Island Ice Tea"
					desc = "A glass of this is sure to prevent a meltdown."
				if("margarita")
					icon_state = "margaritaglass"
					name = "Margarita"
					desc = "On the rocks with salt on the rim. Arriba~!"
				if("blackrussian")
					icon_state = "blackrussianglass"
					name = "Black Russian"
					desc = "For the lactose-intolerant. Still as classy as a White Russian."
				if("vodkatonic")
					icon_state = "vodkatonicglass"
					name = "Vodka and Tonic"
					desc = "For when a gin and tonic isn't russian enough."
				if("manhattan")
					icon_state = "manhattanglass"
					name = "Manhattan"
					desc = "The Detective's undercover drink of choice. He never could stomach gin..."
				if("manhattan_proj")
					icon_state = "proj_manhattanglass"
					name = "Manhattan Project"
					desc = "A scienitst drink of choice, for thinking how to blow up the station."
				if("ginfizz")
					icon_state = "ginfizzglass"
					name = "Gin Fizz"
					desc = "Refreshingly lemony, deliciously dry."
				if("irishcoffee")
					icon_state = "irishcoffeeglass"
					name = "Irish Coffee"
					desc = "Coffee and alcohol. More fun than a Mimosa to drink in the morning."
				if("hooch")
					icon_state = "glass_brown2"
					name = "Hooch"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("whiskeysoda")
					icon_state = "whiskeysodaglass2"
					name = "Whiskey Soda"
					desc = "Ultimate refreshment."
				if("tonic")
					icon_state = "glass_clear"
					name = "Glass of Tonic Water"
					desc = "Quinine tastes funny, but at least it'll keep that Space Malaria away."
				if("sodawater")
					icon_state = "glass_clear"
					name = "Glass of Soda Water"
					desc = "Soda water. Why not make a scotch and soda?"
				if("water")
					icon_state = "glass_clear"
					name = "Glass of Water"
					desc = "The father of all refreshments."
				if("spacemountainwind")
					icon_state = "Space_mountain_wind_glass"
					name = "Glass of Space Mountain Wind"
					desc = "Space Mountain Wind. As you know, there are no mountains in space, only wind."
				if("thirteenloko")
					icon_state = "thirteen_loko_glass"
					name = "Glass of Thirteen Loko"
					desc = "This is a glass of Thirteen Loko, it appears to be of the highest quality. The drink, not the glass"
				if("dr_gibb")
					icon_state = "dr_gibb_glass"
					name = "Glass of Dr. Gibb"
					desc = "Dr. Gibb. Not as dangerous as the name might imply."
				if("space_up")
					icon_state = "space-up_glass"
					name = "Glass of Space-up"
					desc = "Space-up. It helps keep your cool."
				if("lemon_lime")
					icon_state = "glass_yellow"
					name = "Glass of Lemon-Lime"
					desc = "You're pretty certain a real fruit has never actually touched this."
				if("moonshine")
					icon_state = "glass_clear"
					name = "Moonshine"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("soymilk")
					icon_state = "glass_white"
					name = "Glass of soy milk"
					desc = "White and nutritious soy goodness!"
				if("berryjuice")
					icon_state = "berryjuice"
					name = "Glass of berry juice"
					desc = "Berry juice. Or maybe its jam. Who cares?"
				if("poisonberryjuice")
					icon_state = "poisonberryjuice"
					name = "Glass of poison berry juice"
					desc = "A glass of deadly juice."
				if("carrotjuice")
					icon_state = "carrotjuice"
					name = "Glass of  carrot juice"
					desc = "It is just like a carrot but without crunching."
				if("banana")
					icon_state = "banana"
					name = "Glass of banana juice"
					desc = "The raw essence of a banana. HONK"
				if("bahama_mama")
					icon_state = "bahama_mama"
					name = "Bahama Mama"
					desc = "Tropic cocktail"
				if("singulo")
					icon_state = "singulo"
					name = "Singulo"
					desc = "A blue-space beverage."
				if("alliescocktail")
					icon_state = "alliescocktail"
					name = "Allies cocktail"
					desc = "A drink made from your allies."
				if("antifreeze")
					icon_state = "antifreeze"
					name = "Anti-freeze"
					desc = "The ultimate refreshment."
				if("barefoot")
					icon_state = "b&p"
					name = "Barefoot"
					desc = "Barefoot and pregnant"
				if("demonsblood")
					icon_state = "demonsblood"
					name = "Demons Blood"
					desc = "Just looking at this thing makes the hair at the back of your neck stand up."
				if("booger")
					icon_state = "booger"
					name = "Booger"
					desc = "Ewww..."
				if("snowwhite")
					icon_state = "snowwhite"
					name = "Snow White"
					desc = "A cold refreshment."
				if("aloe")
					icon_state = "aloe"
					name = "Aloe"
					desc = "Very, very, very good."
				if("andalusia")
					icon_state = "andalusia"
					name = "Andalusia"
					desc = "A nice, strange named drink."
				if("sbiten")
					icon_state = "sbitenglass"
					name = "Sbiten"
					desc = "A spicy mix of Vodka and Spice. Very hot."
				if("red_mead")
					icon_state = "red_meadglass"
					name = "Red Mead"
					desc = "A True Vikings Beverage, though its color is strange."
				if("mead")
					icon_state = "meadglass"
					name = "Mead"
					desc = "A Vikings Beverage, though a cheap one."
				if("iced_beer")
					icon_state = "iced_beerglass"
					name = "Iced Beer"
					desc = "A beer so frosty, the air around it freezes."
				if("grog")
					icon_state = "grogglass"
					name = "Grog"
					desc = "A fine and cepa drink for Space."
				if("soy_latte")
					icon_state = "soy_latte"
					name = "Soy Latte"
					desc = "A nice and refrshing beverage while you are reading."
				if("cafe_latte")
					icon_state = "cafe_latte"
					name = "Cafe Latte"
					desc = "A nice, strong and refreshing beverage while you are reading."
				if("acidspit")
					icon_state = "acidspitglass"
					name = "Acid Spit"
					desc = "A drink from Nanotrasen. Made from live aliens."
				if("amasec")
					icon_state = "amasecglass"
					name = "Amasec"
					desc = "Always handy before COMBAT!!!"
				if("neurotoxin")
					icon_state = "neurotoxinglass"
					name = "Neurotoxin"
					desc = "A drink that is guaranteed to knock you silly."
				if("hippiesdelight")
					icon_state = "hippiesdelightglass"
					name = "Hippie's Delight"
					desc = "A drink enjoyed by people during the 1960's."
				if("bananahonk")
					icon_state = "bananahonkglass"
					name = "Banana Honk"
					desc = "A drink from Clown Heaven."
				if("silencer")
					icon_state = "silencerglass"
					name = "Silencer"
					desc = "A drink from mime Heaven."
				if("nothing")
					icon_state = "nothing"
					name = "Nothing"
					desc = "Absolutely nothing."
				if("devilskiss")
					icon_state = "devilskiss"
					name = "Devils Kiss"
					desc = "Creepy time!"
				if("changelingsting")
					icon_state = "changelingsting"
					name = "Changeling Sting"
					desc = "A stingy drink."
				if("irishcarbomb")
					icon_state = "irishcarbomb"
					name = "Irish Car Bomb"
					desc = "An irish car bomb."
				if("syndicatebomb")
					icon_state = "syndicatebomb"
					name = "Syndicate Bomb"
					desc = "A syndicate bomb."
				if("erikasurprise")
					icon_state = "erikasurprise"
					name = "Erika Surprise"
					desc = "The surprise is, it's green!"
				if("driestmartini")
					icon_state = "driestmartiniglass"
					name = "Driest Martini"
					desc = "Only for the experienced. You think you see sand floating in the glass."
				if("ice")
					icon_state = "iceglass"
					name = "Glass of ice"
					desc = "Generally, you're supposed to put something else in there too..."
				if("icecoffee")
					icon_state = "icedcoffeeglass"
					name = "Iced Coffee"
					desc = "A drink to perk you up and refresh you!"
				if("icetea")
					icon_state = "icedteaglass"
					name = "Iced Tea"
					desc = "All natural, antioxidant-rich flavour sensation."
				if("coffee")
					icon_state = "glass_brown"
					name = "Glass of coffee"
					desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."
				if("tea")
					icon_state = "teaglass"
					name = "Glass of tea"
					desc = "Drinking it from here would not seem right."
				if("bilk")
					icon_state = "glass_brown"
					name = "Glass of bilk"
					desc = "A brew of milk and beer. For those alcoholics who fear osteoporosis."
				if("fuel")
					icon_state = "dr_gibb_glass"
					name = "Glass of welder fuel"
					desc = "Unless you are an industrial tool, this is probably not safe for consumption."
				else
					icon_state ="glass_brown"
					name = "Glass of ..what?"
					desc = "You can't really tell what this is."
		else
			icon_state = "glass_empty"
			name = "Drinking glass"
			desc = "Your standard drinking glass. Stores 50 of any reagent."
			return
		

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/shot
	name = "shot glass"
	desc = "A Shot Glass. For when the Shotgun isn't enough of a shot. Stores 10 of any reagent."
	icon_state = "shotglass"
	volume = 10
	decor = 0

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/wine
	name = "wine glass"
	desc = "A Wine Glass. Presumably for the fabulously wealthy. Stores 30 of any reagent."
	icon_state = "wineglass"
	amount_per_transfer_from_this = 3	//hon hon hon
	volume = 30
	decor = 0

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/mug
	name = "mug glass"
	desc = "A Glass Mug. Where's a beer keg when you need it? Stores 70 of any reagent."
	icon_state = "mugglass"
	volume = 70
	decor = 0

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle
	name = "glass bottle"
	desc = "A Glass Bottle. Good for Cola and Booze. Stores 100 of any reagent."
	icon_state = "bottleglass"
	volume = 100
	decor = 0

// for /obj/machinery/vending/sovietsoda
/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/soda
	New()
		..()
		reagents.add_reagent("sodawater", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/cola
	New()
		..()
		reagents.add_reagent("cola", 50)
		on_reagent_change()

//Booze for the Boozegod!
/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/beer
	name = "NanoBeer"
	desc = "A moderately drukening booze. Brewed by the best NanoTrasen bartenders."
	New()
		..()
		reagents.add_reagent("beer", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/ale
	name = "Magm-Ale"
	desc = "A light booze, kept chilled."
	New()
		..()
		reagents.add_reagent("ale", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/kahlua
	name = "Honkish Honking Kahlua"
	desc = "The coffee liqeur of the Clowns. Extremely good, if extremely bitter. And possibly angry."
	New()
		..()
		reagents.add_reagent("kahlua", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/vodka
	name = "Ukraine 2023 Vodka"
	desc = "An old bottle from post-WWIII Ukraine. Or not, the label says brewed in 2043."
	New()
		..()
		reagents.add_reagent("vodka", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/whiskey
	name = "Big Jacko's Australian Whiskey"
	desc = "It's the Hardest Drink for the Hardest Cunt of them all."
	New()
		..()
		reagents.add_reagent("whiskey", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/gin
	name = "Lil' Jacko's Australian Gin"
	desc = "It's the Hardest Drink for the Smallest Cunt of them all."
	New()
		..()
		reagents.add_reagent("gin", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/rum
	name = "Pun Pun's Jungle Rumma"
	desc = "Brewed by the craziest and most war torn monkey in the solar system, this rum is bananas!"
	New()
		..()
		reagents.add_reagent("rum", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/wine
	name = "Captain BeardBeard's Vintage 2013 Wine"
	desc = "It's winning, not whining."
	New()
		..()
		reagents.add_reagent("wine", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/cognac
	name = "MasterBrew Cognac"
	desc = "Probably drank by rich texans."
	New()
		..()
		reagents.add_reagent("cognac", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/vermouth
	name = "Rhode Island Vermouth"
	desc = "Why the smallest state in the GPDUSA would brew Vermouth, we'll never know. Nontheless it's damned good."
	New()
		..()
		reagents.add_reagent("vermouth", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/tequilla
	name = "Cuban Tequilla"
	desc = "Gurenteed to leave a trail of fire in your throat and explode out the rear."
	New()
		..()
		reagents.add_reagent("tequilla", 100)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/bottle/patron
	name = "Patronic Patron"
	desc = "A Favorite at Nightclubs throughout the solar system, though we're not sure where it comes from."
	New()
		..()
		reagents.add_reagent("patron", 100)
		on_reagent_change()

//THE MILLIONS OF COCKTAILS. FUCK. WHY WOULD YOU ADD SO MUCH BOOZE?
/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/mug/mead
	New()
		..()
		reagents.add_reagent("mead", 70)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/screwdriver
	New()
		..()
		reagents.add_reagent("screwdrivercocktail", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/wine/gintonic
	New()
		..()
		reagents.add_reagent("gintonic", 30)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/b52
	New()
		..()
		reagents.add_reagent("b52", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/atomicbomb
	New()
		..()
		reagents.add_reagent("atomicbomb", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/shot/whiterussian
	New()
		..()
		reagents.add_reagent("whiterussian", 10)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/shot/blackrussian
	New()
		..()
		reagents.add_reagent("blackrussian", 10)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/shot/whiskeycola
	New()
		..()
		reagents.add_reagent("whiskeycola", 10)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/wine/margarita
	New()
		..()
		reagents.add_reagent("margarita", 30)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/mug/manlydorf
	New()
		..()
		reagents.add_reagent("manlydorf", 70)
		on_reagent_change()
