///////// Пистолеты //////////////////////////////////////////

	//modifications = list("barrel_pistol" = 0, "frame_pistol" = 0, "grip_pistol" = 0)


/obj/item/gun/projectile/pistol/next_day/pm   // Макаров
	name = "PMm"
	desc = "Пистолет Макарова Модернизированный. Довольно распространённый в Метро пистолет - наследие советской эпохи. Достаточно надёжный и дешёвый, отличается невысокой ёмкостью магазина при недостаточной мощности и неудовлетворительности кучности патрона. Основное оружие сталкера-новичка-неудачника. Отличное средство для распугивания ворон."
	//eng_desc = "This Soviet legacy is the most common pistol in the Metro and is one of the best compact self-defense handguns available. It is small, highly reliable, easy to use and maintain in working order. It also suffers from several drawbacks, including its short range, low firing accuracy and poor stopping power, while also losing out to modern pistols in its class in terms of weight and magazine size."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "pm"
	w_class = 2
	caliber = "9x18mm"
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18pm
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18pm
	ammo_type = list( /obj/item/projectile/bullet/bullet9x18, /obj/item/projectile/bullet/bullet9x18P)
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	//durability= 60
	//spread = 10
	//recoil = 0.2
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/next_day/tt   // ТТ
	name = "TT-33"
	desc = "Старый пистолет, произведенный под столь же старый советский патрон. Весьма популярен из-за того, что сотни таких экземпляров остались в складах, где их спустя почти полвека достали и выпустили в продажу бедным новичкам. Мало на что годен, но лучше чем ничего."
	//eng_desc = "An old soviet pistol made for similiarly old soviet ammo. Extremely wide//spread because of large numbers of those pistols left in USSR army stashes around Pripyat. Isn't very powerful, but bullets penetrate armor well enough."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "tt"
	w_class = 2
	load_method = MAGAZINE
	caliber = "7.62x25mm"
	fire_sound = 'sound/stalker/weapons/tt33_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/tt
	allowed_magazines = /obj/item/ammo_magazine/stalker/tt
	ammo_type = /obj/item/projectile/bullet/bullet762x25
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	//durability= 50
	//spread = 8
	//recoil = 0.15
	//damagelose = 0.1
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'


/obj/item/gun/projectile/pistol/next_day/fort12  // Фора12
	name = "Fort-12"
	desc = "Пистолет полицейского назначения украинского производства, пришедший на смену ПМм. Обладает лучшими по сравнению с последним точностью боя, эргономикой и более вместительным магазином, однако менее надёжен."
	//eng_desc = "An Ukranian-made pistol predominantly used by law enforcement organizations. Provides higher accuracy, better ergonomics and has a larger magazine than the PM. These pistols make it into the Zone in large numbers thanks to the sale of defective weapons, which suffer from technical miscalculations in early design models. Despite this, the pistol is in demand among stalkers thanks to its good combat characteristics."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "fort12"
	fire_sound = 'sound/stalker/weapons/fort_shot.ogg'
	caliber = "9x18mm"
	w_class = 2
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18fort
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18fort
	ammo_type = list (/obj/item/projectile/bullet/bullet9x18P, /obj/item/projectile/bullet/bullet9x18)
	force = 10
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 8
	//recoil = 0.25
	//durability= 50
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/fort_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'


/obj/item/gun/projectile/pistol/next_day/pb1s  //ПБ1С
	name = "PB1s"
	desc = "Пистолет с интегрированным глушителем, некогда использовавшийся советским спецназом. Морально устарел, но в умелых руках по-прежнему довольно эффективен."
	//eng_desc = "This pistol was developed in the second half of the 20th century on the basis of the PM for use by special forces and scouting units. The front of the pistol's barrel is covered with an integrated silencer, while the bolt mechanism is short, which prevents a back-moving spring from being located inside it, and it is therefore situated in the weapon's handle. Morally obsolete, the weapon is still effective in the right hands."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "pb1s"
	w_class = 2
	caliber = "9x18mm"
	fire_sound = 'sound/stalker/weapons/pb_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/m9x18pm
	allowed_magazines = /obj/item/ammo_magazine/stalker/m9x18pm
	ammo_type = list (/obj/item/projectile/bullet/bullet9x18P, /obj/item/projectile/bullet/bullet9x18)
	force = 10
	suppressed = 1
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 10
	//recoil = 0.25
	//durability= 50
	//damagelose = 0.2
	//draw_sound = 'sound/stalker/weapons/draw/pm_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/next_day/usp_match  // USP Match
	name = "H&K USP Match"
	desc = "Матчевая модификация известного немецкого пистолета, калибра .45. Имеет специальную насадку, которая уменьшает подброс ствола при стрельбе за счёт своего веса. Увеличенный магазин на 15 патронов. На рукоятке инициалы - L.C."
	//eng_desc = "Impeccable reliability and //durabilitycombined with excellent accuracy are the main noteworthy features of this weapon. Its minor drawbacks include its considerable size, relatively high center of gravity and massive bolt, which make it difficult to conceal but do not outweigh the weapon's positive features. The weapon is especially popular with the Zone's veterans."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "usp-match"
	w_class = 2
	caliber = ".45"
	magazine_type = /obj/item/ammo_magazine/stalker/usp45
	allowed_magazines = /obj/item/ammo_magazine/stalker/usp45
	ammo_type = list (/obj/item/projectile/bullet/bulletacp45, /obj/item/projectile/bullet/bulletacp45P)
	force = 10
	load_method = MAGAZINE
	can_suppress = 1
	can_unsuppress = 1
	//spread = 8
	//recoil = 0.35
	//durability= 60
	//damagelose = 0.25
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/pistol/next_day/desert  // Desert Eagle
	name = "Desert Eagle .44"
	desc = "Большой, тяжелый, блестящий и чертовски внушительный - разработанный в 80-е года прошлого века израильским предприятием и популяризированный многочисленными боевиками конца того же столетия, Пустынный Орел стал своеобразной иконой мощных полуавтоматических пистолетов. Позволить себе такую красоту могут немногие, попасть из нее в кого-то в бою - еще меньшее число людей."
	//eng_desc = "An extremely powerful gun, featured in many Hollywood movies and popularised by criminals. Truly a killing machine for close-range combat."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "desert"
	w_class = 3
	caliber = ".44"
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/desert
	allowed_magazines = /obj/item/ammo_magazine/stalker/desert
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	load_method = MAGAZINE
	can_suppress = 0
	can_unsuppress = 0
	//spread = 8
	//recoil = 0.65
	//durability= 50
	//damagelose = 0.15
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/pm_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/pm_open.ogg'

/obj/item/gun/projectile/revolver/next_day/anaconda
	name = "Colt Anaconda .44"
	desc = "Я знаю, о чём ты сейчас думаешь. Выстрелил он шесть раз, или только пять? Честно говоря, в этой суматохе я и сам сбился со счёта. Но начнём с того, что это Магнум 44-го калибра, самый убойный револьвер на свете, и он может подчистую снести тебе башку. Теперь ты задаёшь себе один вопрос: Повезёт ли мне? Ну, повезёт ли, подонок?"
	//eng_desc = "A very popular amongst western cops weapon, reliable, powerful and precise. Did he shoot six times, or only five?"
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "anaconda"
	w_class = 3
	caliber = ".44"
	load_method = SPEEDLOADER
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	fire_delay = 1.5
	magazine_type = /obj/item/ammo_magazine/internal/cylinder/anaconda
	allowed_magazines = /obj/item/ammo_magazine/internal/cylinder/anaconda
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	//spread = 6
	//recoil = 1
	//durability= 500
	//damagelose = 0.1
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/obrez_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/obrez_open.ogg'

/obj/item/gun/projectile/revolver/next_day/metro/revolver
	name = "Revolver .44"
	desc = "Модель уцелевшего после ударов револьвера. Широко используется в метро, ничем особым не отличается."
	//eng_desc = "Just a revolver"
	icon = 'icons/stalker/metro-2/Metro_Guns.dmi'
	icon_state = "revolver"
	w_class = 3
	fire_sound = 'sound/stalker/weapons/desert_shot.ogg'
	fire_delay = 1.5
	magazine_type = /obj/item/ammo_magazine/internal/cylinder/anaconda
	allowed_magazines = /obj/item/ammo_magazine/internal/cylinder/anaconda
	ammo_type = list (/obj/item/projectile/bullet/bulletmag44, /obj/item/projectile/bullet/bulletmag44FMJ)
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	caliber = ".44"
	load_method = SPEEDLOADER
	//spread = 6
	//recoil = 0.25
	//durability= 500
	//damagelose = 0.1
	bulk = GUN_BULK_PISTOL
	//draw_sound = 'sound/stalker/weapons/draw/usp_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/obrez_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/obrez_open.ogg'

/obj/item/gun/projectile/revolver/Next_day/metro/revolver/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"

///////////////////////////// Автоматы, ПП //////////////////////////////////////////

/obj/item/gun/projectile
	var/zoomable = FALSE //whether the gun generates a Zoom action on creation
	var/zoomed = FALSE //Zoom toggle
	var/zoom_amt = 3 //Distance in TURFs to move the user's screen forward (the "zoom" effect)
	var/datum/action/toggle_scope_zoom/azoom
	var/can_scope = 0
	var/suppressed = 0
	var/scoped = 0			//whether or not a message is displayed when fired
	var/can_suppress = 0
	var/list/obj/item/attachment/addons = list()
	var/obj/item/attachment/gl = null
	var/can_unsuppress = 1
	var/image/mag_overlay 			= null
	var/image/mag_overlay_inhands 	= null
	var/image/silencer_overlay 		= null
	var/image/scope_overlay 		= null
	var/image/colored_overlay 		= null
	var/colored 					= null



/obj/item/gun/projectile/New()
	..()
	if(!istype(src, /obj/item/gun/projectile/pistol))
		mag_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-mag", layer = FLOAT_LAYER)

	if(can_suppress)
		silencer_overlay = image('icons/stalker/projectile_overlays48x48.dmi', "[initial(icon_state)]-silencer", layer = FLOAT_LAYER)

	if(can_scope)
		scope_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-scope", layer = FLOAT_LAYER)

	if(colored)
		colored_overlay = image('icons/stalker/projectile_overlays32x32.dmi', "[initial(icon_state)]-[colored]", layer = FLOAT_LAYER)
		overlays += colored_overlay

	update_icon()

/obj/item/gun/projectile/update_icon()
	..()
	overlays.Cut()

	if(colored)
		overlays += colored_overlay

	if(ammo_magazine && mag_overlay)
		overlays += mag_overlay

	if(suppressed && silencer_overlay)
		overlays += silencer_overlay

	if(zoomable && scope_overlay)
		overlays += scope_overlay
/*
	if(unique)
		overlays += image('icons/stalker/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

	if(istype(src, /obj/item/gun/projectile/pistol/next_day))
		icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	else
		item_state = "[initial(item_state)][magazine ? "" : "-e"]"	//Пока не разберусь с оверлеями на мобах, будет так
*/
	return
/*
/obj/item/gun/projectile/next_day/Next_day/worn_overlays(var/isinhands = TRUE)
	. = list()
	if(!isinhands)
		if(magazine )
			overlays += mag_overlay

		if(suppressed )
			overlays += silencer_overlay
        . += image(icon = 'icons/effects/effects.dmi', icon_state = "[shield_state]")
*/

/obj/item/gun/projectile/next_day
	//modifications = list("barrel_automatic" = 0, "frame_automatic" = 0, "grip_automatic" = 0, "compensator_automatic" = 0)

/obj/item/gun/projectile/next_day/ak74  // AK-74
	name = "AK 74"
	desc = "Автомат образца 1974 года под патрон 5,45x39мм. Представляет собой простое и надёжное оружие, хотя дешевизна в производстве несколько сказалась на удобстве использования и точности боя. В Зоне это основное оружие военных сталкеров и многих одиночек."
	//eng_desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable //recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "ak74"
	item_state = "ak74"//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	load_method = MAGAZINE
	caliber = "5.45x39"
	can_unsuppress = 1
	scoped = 0
	//durability= 120
	w_class = 4
	//spread = 6
	//recoil = 0.5
	//damagelose = 0.25
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'

/obj/item/gun/projectile/next_day/aksu74  // АКС74У
	name = "AK 74S"
	desc = "По своим габаритам и массе АК-74У (укороченный) близок к пистолетам-пулемётам, однако он является представителем автоматов. Достоинства: малые габариты и довольно высокая пробивающая способность. Главные недостатки - малая прицельная дальность и склонность к быстрому перегреву при стрельбе очередями."
	//eng_desc = "Despite being similar to submachineguns in size, weight and tactical purpose, this weapon is classified as an assault rifle due to the fact that its internal mechanism is identical to that of the AK-74. The weapon is notable for its mobility in close quarters and high armor-penetration capacity, while its drawbacks are its short effective range, despite the relatively long bullet range, a tendency to overheat and high ricochet propensity."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "aksu74"
	item_state = "aksu74"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.45x39"
	force = 15
	origin_tech = "combat=3;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74u_shot.ogg'
	can_suppress = 1
	//durability= 100
	w_class = 4
	//spread = 9
	//recoil = 0.7
	//damagelose = 0.5
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74u_draw.ogg'

/*
/obj/item/gun/projectile/next_day/Next_day/aksu74/black  // АКС74У - черный цвет
	colored = "black"
	item_state = "aksu74-black"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
*/

/*obj/item/gun/projectile/next_day/kiparis  // Кипарис
	name = "Kiparis"
	desc = "Небольшой, легкий и удобный пистолет-пулемет под маломощный калибр, разработанный по заказу Министерства Обороны СССР в 1972-ом году. Не нашел широкого распространения в армии из-за сложностей в производстве для тех времен, но был принят на вооружении службами МВД, ФСО, инкассаторами и некоторыми другими отечественными вооруженными группами."
	//eng_desc = "A small, light submachine gun firing a low-powered bullet, was designed by USSR Defense Ministry in the year 1972. Wasn't adopted by army, but found use and popularity amongst different modern russian government military forces and police."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "kiparis"
	item_state = "arg"
	fire_sound = 'sound/stalker/weapons/fort_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/kiparis
	allowed_magazines = /obj/item/ammo_magazine/stalker/kiparis
	ammo_type =
	can_suppress = 1
	fire_delay = 1
	slot_flags = SLOT_BELT
	//durability= 80
	w_class = 3
	//spread = 8
	//recoil = 0.15
	//damagelose = 0.25
	can_scope = 0
	//draw_sound = 'sound/stalker/weapons/draw/mp5_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/mp5_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/mp5_open.ogg'
*/
/obj/item/gun/projectile/next_day/ppsh  // ППШ
	name = "PPSh"
	desc = "Один из самых старых отечественных дизайнов автоматического ручного оружия, пистолет-пулемет Шпагина, с гордостью прошел сквозь Великую Отечественную... чтобы в огромных количествах осесть на складах и ржаветь там более полувека. Некоторые умельцы, однако, хорошенько поработав над старым оружием, переделывают его под новый калибр. У вас в руках - один из таких экземпляров."
	//eng_desc = "The PPSh saw extensive combat use during World War II and the Korean War. It was one of the major infantry weapons of the Soviet Armed Forces during World War II. Around six million PPSh-41s were manufactured. In the form of the Chinese Type 50 (licensed copy), it was still being used by the Viet Cong as late as 1970. According to the 2002 edition of the Encyclopedia of Weapons of World War II the PPSh was still in use with irregular militaries."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "ppsh"
	item_state = "arg"
	load_method = MAGAZINE
	caliber = "7.62x25mm"
	fire_sound = 'sound/stalker/weapons/ppsh_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/ppsh
	allowed_magazines = /obj/item/ammo_magazine/stalker/ppsh
	ammo_type = /obj/item/projectile/bullet/bullet762x25
	can_suppress = 0
	slot_flags = SLOT_BELT
	//durability= 50
	w_class = 4
	//spread = 9
	//recoil = 0.25
	//damagelose = 0.5
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/mp5_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/mp5_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/mp5_open.ogg'

/*/obj/item/gun/projectile/next_day/ak74/tact  // AK-74
	name = "Tactical AK 74"
	desc = "Сильно модифицированная версия АК 74, превосходящая его точностью и скорострельностью, но уступающая своему прародителю в мощности. Идеальное оружие для ведения перестрелок."
	//eng_desc = "Modified AK74. You shouldn't hold this."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "TactiKalash"
	item_state = "TactiKalash"
	colored = 0//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	//durability= 120
	w_class = 4
	//spread = 3
	//recoil = 0.3
	//damagelose = 0.25
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'
*/
/obj/item/gun/projectile/next_day/ak74/makeshift  // AK-74
	name = "Makeshift Kalash"
	desc = "Кустарная версия широко известного калаша, собираемая тут. В сравнении с своими аналогами - более гибок в плане кастомизации, однако, куда менее надёжен и точен, чем свой старший собрат."
	//eng_desc = "Makeshift AK74. It isn't as accurate as pre-war variant, but it's still something and it's still better than Bastard!"
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "makeshiftak"
	item_state = "ak74"
	load_method = MAGAZINE
	caliber = "5.45x39"
	colored = 0//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	magazine_type = /obj/item/ammo_magazine/stalker/makeshift
	allowed_magazines = /obj/item/ammo_magazine/stalker/makeshift
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	//durability= 70
	w_class = 4
	//spread = 6
	//recoil = 0.6
	random//spread = 0
	//damagelose = 0.25
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak74_draw.ogg'


/*/obj/item/gun/projectile/next_day/metro/saiga12  // Сайга
	name = "Saiga-12"
	desc = "Одно из самых устрашающих в метро орудий, претерпевшее не мало изменений после конца света. Жертвуя своим боезапасом и точностью, оружие приобрело огромную скорострельность и убойность. Идеальная защита от мутантов. Увы, раздобыть тоже, грубо говоря, хер."
	//eng_desc = "Automatic shotgun. You feel its power just by holding it."
	icon_state = "saiga"
	item_state = "saiga"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15

	magazine_type = /obj/item/ammo_magazine/stalker/metro/saiga
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	//durability= 120
	w_class = 4
	//spread = 2
	//recoil = 0.2
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/ak74_load.ogg'
	*/
/obj/item/gun/projectile/next_day/abakan  // Абакан
	name = "AC-96"
	desc = "Оружие элитных войск советской армии. Был разработан в качестве замены устаревшему АК-74. В «Абакане» подвижны не только внутренние механизмы, но и вся ствольная коробка вместе со стволом, что позволяет снизить отдачу, тем самым значительно повысив точность боя."
	//eng_desc = "A modern assault rifle developed as a replacement for the ageing AK-74. The main difference is its high speed 2-round burst firing mode, which allows two bullets to be fired at exactly the same spot on a target up to 100 meters away. This significantly increases the likelihood of hitting the target in comparison to the 1 round firing mode, which considerably improves kill potential, stopping power and armor piercing capability."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "abakan"
	item_state = "abakan"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.45x39"
	force = 15
	magazine_type = /obj/item/ammo_magazine/stalker/m545
	allowed_magazines = /obj/item/ammo_magazine/stalker/m545
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	fire_sound = 'sound/stalker/weapons/abakan_shoot.ogg'
	can_suppress = 1
	//durability= 200
	w_class = 4
	//spread = 4
	//recoil = 0.4
	//damagelose = 0.2
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/abakan_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/abakan_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/abakan_open.ogg'

/obj/item/gun/projectile/next_day/fnf2000  // fnf2000
	name = "FN-F2000"
	desc = "ФН-Ф2000 — по-своему идеальное оружие. Возможность установки подствольного гранатомета и сложной баллистической вычислительной системы позволит быстро уложить даже псевдогиганта. При использовании автоматического огня будут очень быстро расходоваться боеприпасы. Наряду с ГП37 является одним из лучших орудий убийства в Зоне."
	//eng_desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics. This one lacks a built-in computerised scope, yet itself is very precise and powerful."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "fnf2000"
	item_state = "fnf2000"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "5.56x45"
	force = 15
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/stalker/m556x45
	allowed_magazines = /obj/item/ammo_magazine/stalker/m556x45
	ammo_type = list (/obj/item/projectile/bullet/bullet556x45, /obj/item/projectile/bullet/bullet556x45AP)
	fire_sound = 'sound/stalker/weapons/fnf2000_shoot.ogg'
	can_suppress = 0
	//durability= 250
	w_class = 4
	//spread = 3
	//recoil = 0.35
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/fnf2000_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/fnf2000_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/fnf2000_open.ogg'



/obj/item/gun/projectile/l6_saw/pkm
	name = "PKM"
	desc = "Этот монстр стреляет винтовочными патронами с таким грохотом, что уши сворачиваются в трубочку, и столь великим вредом всему живому и неживому, что шутя можно снести очередью маленькое здание. Признак не просто успешности и достатка - но смерти. Смерти, несомой всем врагам пулеметчика."
	//eng_desc = "This belt-fed machine gun is a portable modification with a complex two-stage feeding system. Despite its weight and low precision, this LMG has found admirers in the Zone. Used primarily to fight off outnumbering enemy forces during faction conflicts and clear out mutant lairs"
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "PKMclosed200"
	item_state = "l6closedmag"
	w_class = 5
	load_method = MAGAZINE
	caliber = "7.62x54mm"
	slot_flags = SLOT_BACK
	origin_tech = "combat=5;materials=1;syndicate=2"
	magazine_type = /obj/item/ammo_magazine/stalker/pkm
	allowed_magazines = /obj/item/ammo_magazine/stalker/pkm
	ammo_type = /obj/item/projectile/bullet/bullet762x54
	bulk = GUN_BULK_RIFLE
	fire_sound = 'sound/stalker/weapons/pkm_shot.ogg'
	can_suppress = 0
	can_scope = 0
	//spread = 6
	//recoil = 1
	//damagelose = 0.25
	//durability= 500

///////////////////////////// Снайперские винтовки //////////////////////////////////////////
/obj/item/gun/projectile/next_day/vsv
	name = "VSS"
	desc = "Довоенная штурмовая винтовка, едва можно найти на брошенных военных объектах."
	//eng_desc = "A modified version of the silent Vintorez sniper rifle, the assault rifle was designed as a special forces weapon. The rifle's primary purpose is effective fire against enemies employing modern personal protection equipment without disclosing the shooter's location. Thanks to its integrated silencer and 9x39mm caliber round with a heavy subsonic bullet, the weapon's noise and muzzle flash have been reduced to a minimum."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "vsv"
	item_state = "vsv"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/metro/vsv
	allowed_magazines = /obj/item/ammo_magazine/metro/vsv
	ammo_type = /obj/item/projectile/bullet/bullet9x39
	load_method = MAGAZINE
	caliber = "9x39"
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	//durability= 150
	slot_flags = SLOT_BACK
	force = 15
	w_class = 4
	//spread = 3
	//recoil = 0.3
	//damagelose = 0.1
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'

/obj/item/gun/projectile/next_day/svd
	name = "SVD"
	desc = "Снайперская винтовка Драгунова. Предназначена для снайперской стрельбы."
	//eng_desc = "Snayperskaya vintovka Dragunova. Designed for snipership."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "svd"
	item_state = "svd"
	load_method = MAGAZINE
	caliber = "7.62x54mm"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/stalker/svd
	allowed_magazines = /obj/item/ammo_magazine/stalker/svd
	ammo_type = /obj/item/projectile/bullet/bullet762x54
	suppressed = 0
	can_suppress = 0
	can_unsuppress = 0
	//durability= 150
	slot_flags = SLOT_BACK
	force = 15
	w_class = 4
	//spread = 2
	//recoil = 0.3
	//damagelose =
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'

/obj/item/gun/projectile/next_day/scar
	name = "FN SCAR-H"
	desc = "Особенная винтовка, поражающая своей точностью и низкой отдачей. Разработана специальным зарубежным комплексом. Так сложилось, что прототип переделали под патрон калибра 5.56."
	//eng_desc = "FN Herstal weapon system."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "scar"
	item_state = "scar"
	load_method = MAGAZINE
	caliber = "7.62x51mm"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 10
	magazine_type = /obj/item/ammo_magazine/metro/scarh
	allowed_magazines = /obj/item/ammo_magazine/metro/scarh
	ammo_type = /obj/item/projectile/bullet/bullet762x51
	//durability= 120
	w_class = 4
	//spread = 0.1
	//recoil = 0.7
	//damagelose = 0.15
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/l85_draw.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/scar_open.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/scar_load.ogg'

/obj/item/gun/projectile/next_day/sks
	name = "SKS"
	desc = "Советский самозарядный карабин конструкции Сергея Симонова. Нешироко применяемый за счёт дороговизны агрегат."
	//eng_desc = "Soviet carabine."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "sks"
	item_state = "sks"
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	magazine_type = /obj/item/ammo_magazine/metro/sks
	allowed_magazines = /obj/item/ammo_magazine/metro/sks
	ammo_type = /obj/item/projectile/bullet/bullet762x51
	can_suppress = 1
	can_unsuppress = 1
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = "7.62x51mm"
	force = 15
	w_class = 4
	//spread = 2
	//recoil = 0.2
	//damagelose = 0.5
	can_scope = 1
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/val_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/val_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/val_open.ogg'

/obj/item/gun/projectile/next_day/ak12
	name = "AK12"
	desc = "Автомат калашникова, образец 2012 года."
	//eng_desc = "AK 2012. Tacticool one."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "ak12"
	item_state = "ak12"
	fire_sound = 'sound/stalker/weapons/ak12_shoot.ogg'
	magazine_type = /obj/item/ammo_magazine/ak12
	allowed_magazines = /obj/item/ammo_magazine/ak12
	ammo_type = list (/obj/item/projectile/bullet/bullet545, /obj/item/projectile/bullet/bullet545AP)
	load_method = MAGAZINE
	can_suppress = 0
	slot_flags = SLOT_BELT
	load_method = MAGAZINE
	caliber = "5.45x39"
	//durability= 100
	w_class = 4
	//spread = 0.1
	//recoil = 0.5
	//damagelose = 0
	can_scope = 0
	bulk = GUN_BULK_RIFLE
	//draw_sound = 'sound/stalker/weapons/draw/ak12_draw.ogg'
	mag_insert_sound = 'sound/stalker/weapons/load/ak12_load.ogg'
	mag_remove_sound = 'sound/stalker/weapons/unload/ak12_unload.ogg'