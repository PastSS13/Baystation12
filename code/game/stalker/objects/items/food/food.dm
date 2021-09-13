/obj/item/reagent_containers/food/snacks/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 7, "vitamin" = 3)
	nutriment_amt = 9
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/can/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 5, "vitamin" = 3)
	nutriment_amt = 12
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/canned/stalker
	icon = 'icons/stalker/food.dmi'
	bitesize = 4
	nutriment_desc = list("nutriment" = 6, "vitamin" = 3)
	nutriment_amt = 9
	eat_sound = 'sound/items/eatfood.ogg'

/obj/item/reagent_containers/food/snacks/can/stalker/konserva
	name = "tourist delight"
	desc = "Консервы \"Радость туриста\" с растащенного сталкерами армейского продовольстенного склада. Срок годности вроде бы не истёк."
	icon_state = "konserva"

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/shproti
	name = "shproti"
	desc = "Рижские шпроты."
	icon = 'icons/stalker/food.dmi'
	icon_state = "shproti"
	trash = /obj/item/trash/shproti
	name = "shproti"
	icon_state = "shproti"


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/soup
	name = "soup"
	desc = "Готовый законсервированный суп по-домашнему."
	icon = 'icons/stalker/food.dmi'
	icon_state = "soup0"
	trash = /obj/item/trash/soup


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/bobi
	name = "bobi"
	desc = "Консервы \"Бобовый Сюрприз\", сносно."
	icon = 'icons/stalker/food.dmi'
	nutriment_desc = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	icon_state = "bobi0"

/obj/item/reagent_containers/food/snacks/can/stalker/konserva/govyadina2
	name = "tushenka"
	desc = "Банка законсервированной говядины."
	icon = 'icons/stalker/food.dmi'
	icon_state = "govyadina0"

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/fish
	name = "fish"
	desc = "Рыбные консервы 'Припять', видимо из местной реки"
	icon = 'icons/stalker/food.dmi'
	icon_state = "fish0"
	trash = /obj/item/trash/fish

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/sirok
	name = "cheese"
	desc = "Пачка свежего плавленого сыра."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "sirok"
	trash = /obj/item/trash/sirok


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/snikers
	name = "snikers"
	desc = "Популярный шоколадный батончик."
	//weight = 0.1
	icon = 'icons/stalker/food.dmi'
	icon_state = "snikers"
	trash = /obj/item/trash/sirok/snikers


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/chocolate
	name = "Chocolate"
	desc = "Небольшая; плитка горького шоколада."
	icon = 'icons/stalker/food.dmi'
	icon_state = "Choco1"
	trash = /obj/item/trash/snikers/Choco

/obj/item/storage/box/MRE
	name = "MRE"
	desc = "Армейский ИРП рассчитанный на сутки."
	icon = 'icons/stalker/lohweb/items.dmi'
	icon_state = "fieldration"
	var/icon_state_opened = "fieldrationopen"

/obj/item/storage/box/MRE/New()
	..()
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/sirok
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/snack/chocolate
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/kasha(src)
	new /obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva1(src)

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/galets
	name = "Galets"
	desc = "Галеты армейские, вкусные и питательные."
	icon_state = "GAL1"
	trash = /obj/item/trash/snikers/GAL
/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/kasha
	name = "Kasha"
	desc = "Готовая овсяная каша в вакуумной упаковке."
	icon_state = "Kasha1"
	trash = /obj/item/trash/konserva/kasha


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva1
	name = "Konserva"
	desc = "Судя по этикетке, банка законсервированного мяса, но какого - не написано."

	icon_state = "TushenkaRed1"

	trash = /obj/item/trash/konserva/TushenkaRed


/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva2
	name = "Konserva"
	desc = "Судя по этикетке, банка законсервированного мяса c овощами, но какое мясо и какие овощи - не написано."
	icon_state = "TushenkaGreen1"
	trash = /obj/item/trash/konserva/TushenkaGreen

/obj/item/reagent_containers/food/snacks/canned/stalker/konserva/MREkonserva3
	name = "Konserva"
	desc = "Судя по этикетке, банка законсервированного мяса c зеленью, но какое мясо и какая зелень - не написано."
	icon_state = "TushenkaBlue1"
	trash = /obj/item/trash/konserva/TushenkaBlue
/obj/item/reagent_containers/food/snacks/stalker/konserva/kolbasa
	name = "kolbasa"
	desc = "Часто за неимением лучшего эта колбаса - смесь курятины и соевого заменителя - завтрак, обед и ужин."

	//weight = 0.4
	icon_state = "kolbasa"
/obj/item/reagent_containers/food/snacks/stalker/baton
	name = "baton"
	desc = "Неизвестно, кто умудряется печь батоны, однако этот хлеб не заражен и вполне съедобен. Во всяком случае, никто пока не жаловался."
	//weight = 0.2
	icon_state = "baton_stalker"
