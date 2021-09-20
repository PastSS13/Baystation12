//NEXT_DAY_SERVER//

/obj/item/gun/projectile/m14
	name = "M14 rifle"
	desc = "The M14 - rifle of the Vietnam War. Uses 7.62mm rounds."
	icon = 'icons/obj/ND/ND_gun/guns1.dmi'
	icon_state = "m14"
	item_state = "m14"
	item_icons = list(
	slot_r_hand_str = 'icons/obj/ND/ND_gun/right1.dmi',
	slot_l_hand_str = 'icons/obj/ND/ND_gun/left1.dmi',
	)
	wielded_item_state = "m14-wielded"
	var/obj/item/attachment/scope/scoped = null
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE_SNIPER
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ESOTERIC = 5)
	slot_flags = SLOT_BACK
	ammo_type = null
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = null
	one_hand_penalty = 3


	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=null,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.6, 1.0, 1.2)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=null,    one_hand_penalty=6, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(1.0, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/gun/projectile/m14/on_update_icon()
	if(scoped)
		icon_state = (ammo_magazine)? "m14scoped" : "m14scoped-empty"
	else
		icon_state = (ammo_magazine)? "m14" : "m14-empty"
	wielded_item_state = (ammo_magazine)? "m14-wielded" : "m14-wielded-empty"
	..()

/obj/item/gun/projectile/m14/attackby(var/obj/item/A as obj, mob/user as mob)
	if (istype(A, /obj/item/attachment) && user.unEquip(A))
		A.loc = src
		scoped = A
		update_icon()
	..()

/obj/item/gun/projectile/m14/verb/unscope()
	set category = "Object"
	set name = "De-Scope"
	set popup_menu = 1

	De_scope()

/obj/item/gun/projectile/m14/proc/De_scope()
	if (!scoped)
		to_chat(usr, "GDE PRICEL?!!!")
		return
	if (ismob(loc.loc))
		var/mob/M = loc.loc
		M.put_in_hands(scoped)
		to_chat(usr, "PRICEL NASH!!")
	else
		scoped.loc = get_turf(src)
	scoped = null
	update_icon()

/obj/item/gun/projectile/m14/verb/scoped()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, scoped.scope_zoom)