
////////////////////////////////////////////////
//
// some zombieapoc weird stuff
//
////////////////////////////////////////////////

/* TURFS */

//walls

/turf/unsimulated/wall/cataclysmdda
	name = "стена"
	desc = "Простая стена."
	icon = 'ND/icons/cataclysmdda/wall01.dmi'
	icon_state = "wall-0"
	//base_icon_state = "wall"
//	slicing_duration = 150
	//iexplosion_block = 1
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand



/turf/unsimulated/wall/cataclysmdda/blue
	color = COLOR_SKY_BLUE

/turf/unsimulated/wall/cataclysmdda/wooden
	name = "деревянная стена"
	icon = 'ND/icons/cataclysmdda/wall02.dmi'
	icon_state = "walld-0"
	//base_icon_state = "walld"
	//sheet_type = /obj/item/stack/sheet/mineral/wood
//	hardness = 70
	//iexplosion_block = 0
	//custom_materials = list(/datum/material/wood = 4000)

/turf/unsimulated/wall/cataclysmdda/redbrick
	name = "кирпичная стена"
	desc = "Типичная стена из красных кирпичей. Поразительно! Вы только посмотрите на то, как укладывали кирпичи, это явно были не простые иммигранты из Азербайджана..."
	icon = 'ND/icons/cataclysmdda/wall03.dmi'
	icon_state = "wallb-0"
	//base_icon_state = "wallb"
	//sheet_type = null
//	hardness = 100
	//iexplosion_block = 1
	//custom_materials = null

//floors

/turf/simulated/floor/cataclysmdda/parquet
	name = "паркетный пол"
	desc = "Деревянный пол, уложенный в стиле 'ёлочки'. Подозрительно как-то напоминает о домашнем уюте."
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "wooden1"
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand

/turf/simulated/floor/cataclysmdda
	name = "деревянный пол"
	desc = "Простой непримечательный деревянный пол. У вас возникает ощущение, что когда-нибудь этот пол провалится над вами."
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "wooden2"
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand


/turf/simulated/floor/plasteels/tile/white
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "tile2"
	//base_icon_state = "tile2"

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda
	name = "пол"
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "block1"
	//base_icon_state = "block1"


/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/alt
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "block2"
	//base_icon_state = "block2"

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/alt2
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	name = "бетонный пол"
	icon_state = "concrete"
	//base_icon_state = "concrete"

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/alt3
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "block3"
	//base_icon_state = "block3"

/turf/simulated/floor/plasteels/tile/monofloor/cataclysmdda/blue
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "blue"
	//base_icon_state = "blue"
//	return FALSE

/turf/simulated/floor/platings/beach/sand/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "sand"
	//base_icon_state = "sand"

/turf/simulated/indestructible/cataclysmdda/sand
	name = "песок"
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "sand"
	//base_icon_state = "sand"
	//footstep = //footstep_SAND
	//bare//footstep = //footstep_SAND
	//claw//footstep = //footstep_SAND
	//heavy//footstep = //footstep_SAND

/turf/simulated/floor/grasss/cataclysmdda
	name = "трава"
	desc = "В ней классно валяться."
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "grass0"
	//base_icon_state = "grass0"
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand
	//slowdown = 2
	//footstep = //footstep_GRASS
	//bare//footstep = //footstep_GRASS
	//claw//footstep = //footstep_GRASS
	//heavy//footstep = //footstep_GRASS

/turf/simulated/floor/grasss/cataclysmdda/Initialize()
	. = ..()
	icon_state = "grass[rand(0, 6)]"

/turf/simulated/floor/grasss/cataclysmdda/dirt
	name = "грязь"
	desc = null
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "dirt1"
	//base_icon_state = "dirt1"
	//footstep = //footstep_SAND
	//bare//footstep = //footstep_SAND
	//claw//footstep = //footstep_SAND
	//heavy//footstep = //footstep_SAND
	//slowdown = 0.5
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand

/turf/simulated/floor/grasss/cataclysmdda/dirt/proc/changeicon()
	icon_state = "dirt[rand(1,4)]"

/turf/simulated/floor/grasss/cataclysmdda/dirt/alt
	icon_state = "dirtalt"
	//base_icon_state = "dirt1"

/turf/simulated/floor/asphalt
	name = "асфальт"
	desc = "Асфальтное покрытие, использумое в основном для покрытия дорог. По сути, особая смесь битумов и минеральных веществ."
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "asphalt1"
	//base_icon_state = "asphalt"
//	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	//base_turf= /turf/simulated/floor/plating/beach/sand
	//footstep = //footstep_SAND
	//bare//footstep = //footstep_SAND
	//claw//footstep = //footstep_SAND
	//heavy//footstep = //footstep_SAND
	//slowdown = 0
	//base_turf= /turf/simulated/indestructible/cataclysmdda/sand

/turf/simulated/floor/asphalt/Initialize()
	. = ..()
	if(prob(2))
		icon_state = "asphalt[rand(2,7)]"
	else
		icon_state = "asphalt1"

/turf/simulated/water/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "water"
	//base_turf= /turf/simulated/water/cataclysmdda // yeah
	//slowdown = 3

/turf/simulated/water/cataclysmdda/Entered(atom/movable/AM)
	. = ..()

//		var/mob/living/carbon/human/H = AM
//		H.extinguish_mob()


/turf/simulated/water/cataclysmdda/Exited(atom/movable/AM, atom/newLoc)
	. = ..()
	if(ismob(AM))
		add_overlay(mutable_appearance(icon, "water_overlay", ABOVE_HUMAN_LAYER , ABOVE_HUMAN_LAYER ))



/turf/simulated/floor/carpet/tentfloor
	name = "пол палатки"
	desc = "Мягкий пол."
	icon = 'ND/icons/cataclysmdda/cata_floors.dmi'
	icon_state = "tent_floor"
	//base_icon_state = null
	//iloor_tile = null
	//base_turf = /turf/simulated/floor/plating/beach/sand

///turf/simulated/floor/carpet/tentfloor/crowbar_act(mob/living/user/, obj/item/I)
//	return FALSE

/* Objects */

//Flora
/obj/structure/flora/cataclysmdda/decoration
	name = "кустик"
	desc = null
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "plant"


/obj/structure/flora/cataclysmdda/decoration/nature
	icon_state = "plant"

/obj/structure/flora/cataclysmdda/decoration/nature/Initialize()
	. = ..()
	icon_state = "[icon_state][rand(1,8)]"

/obj/structure/flora/cataclysmdda/decoration/houseplant
	icon_state = "houseplant1"

/obj/structure/flora/cataclysmdda/decoration/houseplant/alt
	icon_state = "houseplant2"

/obj/structure/flora/cataclysmdda/decoration/houseplant/alt2
	icon_state = "houseplant3"

/obj/structure/flora/cataclysmdda/decoration/houseplant/alt3
	icon_state = "houseplant4"

/obj/structure/flora/cataclysmdda/decoration/houseplant/alt4
	icon_state = "houseplant5"

/obj/structure/flora/cataclysmdda/decoration/reed
	name = "камыш"
	icon_state = "kamish"

/obj/structure/flora/cataclysmdda/decoration/jug
	name = "кувшинка"
	icon_state = "koovshin"

/obj/structure/flora/cataclysmdda/decoration/nature/wheat
	name = "пшеница"
	icon_state = "wheat1"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	opacity = 1
	layer = ABOVE_HUMAN_LAYER
	mouse_opacity = 0

/obj/structure/flora/cataclysmdda/decoration/nature/wheat/Initialize()
	. = ..()
	icon_state = "wheat[rand(1,4)]"


//Trees

/obj/structure/flora/tree/cataclysmdda
	name = "КОДЕР"
	desc = "МУДАК"
	icon = 'ND/icons/cataclysmdda/cata_trees.dmi'
	pixel_x = -16
	density = TRUE
	///base_icon_state = "els"
	// living variations


/obj/structure/flora/tree/cataclysmdda/proc/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()
	if(!. && istype(mover, /obj/item/projectile))
		return prob(30)

/obj/structure/flora/tree/cataclysmdda/iva
	name = "ива"
	desc = "Род древесных растений семейства Ивовые (Salicaceae). В русском языке по отношению к видам ивы используется также много других названий — ветла́, раки́та, лоза́, лози́на, ве́рба́, тальник."
	icon_state = "iva1"
	//base_icon_state = "iva"

/obj/structure/flora/tree/cataclysmdda/cash
	name = "каштан"
	desc = "Небольшой род деревьев семейства Буковые (Fagaceae). Каштан — дерево тёплого умеренного климата. Произрастает по склонам гор, как правило, на затенённых склонах с бурыми средневлажными почвами, залегающими на безызвестковых горных породах; сухих и заболоченных почв не переносит."
	icon_state = "cash1"
	//base_icon_state = "cash"

/obj/structure/flora/tree/cataclysmdda/yabl
	name = "яблоня"
	desc = "Род листопадных деревьев и кустарников семейства Розовые (Rosaceae) с шаровидными сладкими или кисло-сладкими плодами. Происходит из зон умеренного климата Северного полушария."
	icon_state = "yabl1"
	//base_icon_state = "yabl"


/obj/structure/flora/tree/cataclysmdda/topol
	name = "тополь"
	desc = "Род двудомных (редко однодомных) листопадных быстрорастущих деревьев семейства Ивовые (Salicaceae). Лес с преобладанием тополей называют тополёвником."
	icon_state = "topol1"
	//base_icon_state = "topol"


/obj/structure/flora/tree/cataclysmdda/el
	name = "ель"
	desc = "Род хвойных вечнозелёных деревьев семейства Сосновые (Pinaceae). Вечнозелёные деревья. Корневая система первые 10—15 лет стержневая, затем поверхностная (главный корень отмирает). Дерево слабо ветроустойчиво, часто ветровально."
	icon_state = "el1"
	//base_icon_state = "el"


/obj/structure/flora/tree/cataclysmdda/el/small
	name = "маленькая ель"
	icon_state = "els1"
	//base_icon_state = "els"

/obj/structure/flora/tree/cataclysmdda/oreh
	name = "орех"
	desc = "Род растений семейства Ореховые (Juglandaceae), включающий в себя более 20 видов, произрастающих в теплоумеренных районах Евразии, Северной Америки и в горах Южной Америки."
	icon_state = "oreh1"
	//base_icon_state = "oreh"


/obj/structure/flora/tree/cataclysmdda/kedr
	name = "кедр"
	desc = "Олиготипный род деревьев семейства Сосновые (Pinaceae). Представители рода однодомные, вечнозелёные деревья высотой до 40—50 метров, с раскидистой кроной. Кора тёмно-серая, на молодых стволах гладкая, на старых растрескивающаяся, чешуйчатая. Побеги укороченные и удлинённые, последние несут спирально расположенную хвою."
	icon_state = "kedr1"
	//base_icon_state = "kedr"

/obj/structure/flora/tree/cataclysmdda/sosna
	name = "сосна"
	desc = "Типовой род хвойных деревьев, кустарников или стлаников семейства Сосновые (Pinaceae). Одна из двух версий производит латинское название дерева от кельтского слова pin, что означает скала, гора, то есть растущее на скалах, другая — от латинских слов pix, picis, что означает смола, то есть смолистое дерево."
	icon_state = "sosna1"
	//base_icon_state = "sosna"

/obj/structure/flora/tree/cataclysmdda/dub
	name = "дуб"
	desc = "Род деревьев и кустарников семейства Буковые (Fagaceae). Род объединяет около 600 видов. Естественным ареалом дуба являются регионы Северного полушария с умеренным климатом. Южной границей распространения являются тропические высокогорья; несколько видов встречаются и южнее экватора."
	icon_state = "dub1"
	//base_icon_state = "dub"

/obj/structure/flora/tree/cataclysmdda/ht
	name = "дерево"
	desc = "Данное дерево ничем не примечательно."
	icon_state = "ht1"
	//base_icon_state = "ht"

/obj/structure/flora/tree/cataclysmdda/mt
	name = "большое дерево"
	desc = "Данное дерево ничем не примечательно. Это выглядит больше."
	icon_state = "mt1"
	//base_icon_state = "mt"


//Structure
/obj/structure/cataclysmdda
	name = "structure"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	anchored = 1
	//can_be_unanchored = FALSE
	opacity = 0
	density = 1


/obj/structure/barricade/wooden/dark
	name = "деревянная баррикада"
	desc = "Вход заборонен."
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "barricade"

/obj/structure/cataclysmdda/lamp
	name = "напольный светильник"
	desc = "Прикольно светится."
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "lomp"
	density = 1
	opacity = 0
	//max_integrity = 70
	//sheetType = /obj/item/stack/rods
	//sheetAmount = 3

/obj/structure/curtain/cataclysmdda
	name = "занавеска"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "shtora-open"
	//icon_type = "shtora"
	color = null
	alpha = 240

/obj/structure/curtain/cataclysmdda/window
	name = "штора"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "curtain-open"
	//icon_type = "curtain"
	color = null
	alpha = 255
	//opaque_closed = TRUE
	//flags_1 = ON_BORDER_1
	//interaction_flags_atom = NONE
	//max_integrity = 120
	//вставь в окно и выстави дир внутрь здания.........


/obj/structure/cataclysmdda/bath
	name = "ванна"
	desc = "Вода не включена в стоимость."
	icon_state = "bath"
	anchored = 1
	density = 0
	//max_integrity = 150
	//obj_integrity = 150
	//sheetType = /obj/item/stack/sheet/iron
	//sheetAmount = 7

/obj/structure/cataclysmdda/bath/another
	icon_state = "bath2"

/obj/structure/sink/kitchen/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "thasink"
	density = 1
	opacity = 0
	//max_integrity = 150
	//obj_integrity = 150

/obj/structure/toilet/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "thatoilet"
	anchored = 1
	//max_integrity = 100
	//obj_integrity = 100

/obj/structure/cataclysmdda/arcade
	name = "Arcade Machine"
	desc = "Не работает."
	icon_state = "thaarcade"
	density = 1
	anchored = 1
	opacity = 0
	//max_integrity = 200
	//obj_integrity = 200

/obj/structure/cataclysmdda/bassboost
	name = "колонка"
	desc = "Долбит нормально."
	icon_state = "bassiebut"
	anchored = 1
	//max_integrity = 100
	//obj_integrity = 100
	//sheetType = /obj/item/stack/sheet/iron
	//sheetAmount = 4

/obj/structure/trash_pile/hay
	name = "стог сена"
	icon_state = "hay"
	//max_integrity = 25
	//obj_integrity = 25

/obj/structure/cataclysmdda/tablichka
	name = "ВНИМАНИЕ: МИННОЕ ПОЛЕ"
	desc = null
	icon_state = "minefield"
	//max_integrity = 25
	//obj_integrity = 25
	//sheetType = /obj/item/stack/sheet/mineral/wood
	//sheetAmount = 1

/obj/structure/cataclysmdda/antenna
	name = "спутниковая антенна"
	desc = "Используется для приёма различных радиосигналов между станциями через спутники."
	icon_state = "antenn"
	//max_integrity = 100
	//obj_integrity = 100

/obj/structure/cataclysmdda/oven
	name = "кухонная плита"
	desc = "К сожалению, газа нет."
	icon_state = "oven"
	//max_integrity = 200
	//obj_integrity = 200
	opacity = 0
	density = 1
	//sheetType = /obj/item/stack/sheet/iron
	//sheetAmount = 7



/obj/structure/cataclysmdda/penek
	name = "пенек"
	desc = "При осмотре этого пенька вы потеряли где-то свои 1000 рублей."
	icon_state = "penek"
	//max_integrity = 25
	//obj_integrity = 25
	//sheetType = /obj/item/grown/log/tree
	//sheetAmount = 4
/*
/obj/structure/cataclysmdda/washingmachine
	name = "стиральная машинка"
	desc = "Производитель этих стиральных машин дал обещание, что они будут работать. Когда-нибудь."
	icon_state = "washingmachine"
	//max_integrity = 200
	//obj_integrity = 200
	//sheetType = /obj/item/stack/sheet/iron
	//sheetAmount = 2
*/
/obj/structure/bed/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "bed"

/obj/structure/bed/cataclysmdda/matress
	icon_state = "matress"

/obj/structure/closet/crate/box
	name = "коробка"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "box01"
//	open_sound = 'sound/machines/cardboard_box.ogg'
//	close_sound = 'sound/machines/cardboard_box.ogg'
	//open_sound_volume = 35
	//close_sound_volume = 50

/obj/structure/closet/crate/shkaf
	name = "шкаф"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "shkaf"
	//open_sound_volume = 35
	//close_sound_volume = 50
	//obj_integrity = 200
	//max_integrity = 200
	anchored = 1
	//can_be_unanchored = FALSE

/obj/structure/grille/cataclysmdda
	name = "решетка"
	desc = "Крепкая решетка."
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "grille"
	density = 1
	anchored = 1
	//max_integrity = 700
	//obj_integrity = 700
	//flags_1 = CONDUCT_1
	layer = CLOSED_DOOR_LAYER


/obj/structure/cataclysmdda/bookcase
	name = "книжная полка"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "bookshelf"
	//max_integrity = 80
	//obj_integrity = 80
	//sheetType = /obj/item/stack/sheet/mineral/wood
	//sheetAmount = 3

/obj/structure/cataclysmdda/veshalka
	name = "вешалка"
	desc = null
	icon_state = "veshalka"
	//max_integrity = 25
	//obj_integrity = 25

/obj/machinery/door/unpowered/wood/cataclysmdda
	name = "деревянная дверь"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "door"
//	open_sound = 'sound/effects/doorcreaky.ogg'
//	close_sound = 'sound/effects/doorcreaky.ogg'
/obj/structure/cataclysmdda/kitchencloset
	name = "кухонный шкаф"
	desc = null
	icon_state = "kitchencloset"
	//max_integrity = 50
	//obj_integrity = 50
	opacity = 0
	density = 1
	//sheetType = /obj/item/stack/sheet/mineral/wood
	//sheetAmount = 7


/obj/structure/rack/cataclysmdda
	name = "деревянный стеллаж"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "shelf"
	//obj_integrity = 100
	//max_integrity = 100
/obj/structure/rack/cataclysmdda/entertaiment
	name = "entertaiment center"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "7,33"
	//obj_integrity = 100
	//max_integrity = 100


/obj/structure/rack/cataclysmdda/metal
	name = "металлический стеллаж"
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "shelf2"
	//max_integrity = 150
	//max_integrity = 150

/obj/structure/barricade/wooden/fence
	name = "деревянный забор"
	desc = "Для изоляции от лишних глаз."
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "fence"
	opacity = 1

/obj/machinery/door/unpowered/simple/cataclysmdda/wooden
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "door_closed"

/obj/structure/filingcabinet/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "8,33"

/obj/structure/chair/stool/bar/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "barstool"
//	item_chair = /obj/item/chair/stool/bar/cataclysmdda


/obj/structure/dresser/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "dresser"

/obj/structure/table/wood/cataclysmdda
	name = "стол"
	icon = 'ND/icons/cataclysmdda/cata_table01.dmi'
	//base_icon_state = "reinforced_table"
	icon_state = "reinforced_table-0"

/obj/structure/table/wood/cataclysmdda/desk
	name = "стол"
	icon = 'ND/icons/cataclysmdda/cata_table02.dmi'
	//base_icon_state = "reinforced_table"
	icon_state = "reinforced_table-0"

/obj/structure/table/wood/cataclysmdda/sci
	name = "стол"
	desc = "Обычный деревянный, слегка пошарпанный стол."
	icon = 'ND/icons/cataclysmdda/cata_table03.dmi'
	//base_icon_state = "reinforced_table"
	icon_state = "reinforced_table-0"

/obj/structure/chair/wood/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "thastool"
	//buildstacktype = /obj/item/stack/sheet/mineral/wood
//	buildstackamount = 3
//	item_chair = /obj/item/chair/wood/cataclysmdda

/obj/item/chair/wood/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "thastool_item"
	//lefthand_file = 'icons/mob/inhands/misc/chairs_lefthand.dmi'
	//righthand_file = 'icons/mob/inhands/misc/chairs_righthand.dmi'
	//inhand_icon_state = "woodenchair"
	//iorigin_type = /obj/structure/chair/wood/cataclysmdda

/obj/structure/chair/comfy/cataclysmdda
	icon = 'ND/icons/cataclysmdda/cata_objects.dmi'
	icon_state = "thachair"
	color = null

/obj/effect/turf_decal/cataclysmdda
	name = "Пидрила"
	icon = 'ND/icons/cataclysmdda/cata_decals.dmi'
	icon_state = null
	mouse_opacity = 0

/obj/effect/turf_decal/cataclysmdda/asphaltpaint
	name = "asphalt road paint"
	icon_state = "asphalt_y"

/obj/effect/turf_decal/cataclysmdda/grass
	name = "grass decal"
	icon_state = "grassdecal"

/obj/effect/turf_decal/cataclysmdda/grass/alt
	icon_state = "grassdecal2"



