/obj/item/attachment
	icon = 'icons/stalker/weapon_mods.dmi'
	var/list/types = list()
	w_class = 2

/obj/item/attachment/suppressor
	name = "suppressor"
	desc = "A universal suppressor."
	icon = 'ND/obj/guns/projectile.dmi'
	icon_state = "suppressor"
	types = list(/obj/item/gun/projectile/pistol/next_day/pm,
				/obj/item/gun/projectile/pistol/next_day/fort12,
				/obj/item/gun/projectile/pistol/next_day/usp_match,
				/obj/item/gun/projectile/next_day/ak74,
				/obj/item/gun/projectile/next_day/aksu74,
				/obj/item/gun/projectile/next_day/abakan)
//				/obj/item/gun/projectile/next_day/kiparis
	var/oldsound = null
	var/initial_w_class = null

/obj/item/attachment/scope
	name = "scope"
	desc = "A universal scope."
	icon = 'icons/stalker/weapon_mods.dmi'
	icon_state = "susat"
	var/scope_zoom = 1


/obj/item/attachment/scope/SUSAT
	name = "SUSAT"
	desc = "Оптический прицел фиксированной кратности (4 диоптрии). Чаще всего используется для ведения прицельного огня из лёгкого стрелкового оружия на средние и большие дистанции. Устанавливается на планку Пикатинни."
//	eng_desc = "A 4x fixed zoom scope produced primarily in Western countries. Attached to weapons by means of the NATO-standard Picatinny rail. Often used for accurate fire from small arms at medium to long range."
	icon = 'icons/stalker/weapon_mods.dmi'
	icon_state = "susat"
	types = list(///obj/item/gun/projectile/automatic/next_day/metro/saiga12,
				)

/obj/item/attachment/scope/PS
	types = list(/obj/item/gun/projectile/next_day/aksu74,
				 /obj/item/gun/projectile/next_day/ak74,
				 /obj/item/gun/projectile/next_day/abakan)


/obj/item/attachment/scope/PS/U1
	name = "PSU-1"
	desc = "Оптический прицел фиксированной кратности (2,7 диоптрии). Оптимизирован для боя на средних дистанциях, а также для использования в условиях городской застройки. Для установки на оружие используется стандартное в странах Варшавского договора крепление типа «ласточкин хвост»."
	icon_state = "PSU1"
	types = list(/obj/item/gun/projectile/next_day/aksu74,
				/obj/item/gun/projectile/next_day/ak74,
				/obj/item/gun/projectile/next_day/abakan)


/obj/item/attachment/scope/PS/O1
	name = "PSO-1"
	desc = "Широко распространённый оптический прицел советского производства фиксированной кратности (5). Оснащён шкалой для определения дальности до цели. Для установки на оружие используется стандартное в странах Варшавского договора крепление типа «ласточкин хвост»."
	icon_state = "PSO1"
	types = list(/obj/item/gun/projectile/next_day/aksu74,
				 /obj/item/gun/projectile/next_day/ak74,
				 /obj/item/gun/projectile/next_day/abakan)


/obj/item/attachment/scope/rifle
	name = "rifle scope"
	desc = "WWII rifle scope"
	icon_state = "rifle"
	types = list(///obj/item/gun/projectile/shotgun/boltaction/enfield,
				/obj/item/gun/projectile/next_day/sks)


/obj/item/attachment/scope/fnf2000
	name = "FN-F2000 scope"
	desc = "Прицел для винтовки FN-F2000."
	icon_state = "fnf2000-scope"
	types = list(/obj/item/gun/projectile/next_day/fnf2000)

/obj/item/attachment/grenadelauncher
	name = "grenade launcher"
	desc = "Подствольный гранатомёт."
	icon_state = ""
	types = list()

/obj/item/attachment/grenadelauncher/fnf2000
	name = "fn-f2000 grenade launcher"
	desc = "Подствольный гранатомёт для fn-f2000"
	icon_state = "fnf2000-gl"



/obj/item/gun/projectile/verb/deattach()
	set src in usr.contents
	set category = "Object"
	set name = "Deattach Addon"

	if(usr.stat || usr.restrained() || !Adjacent(usr) || usr.stunned || usr.weakened || usr.lying)
		return

	if(usr.get_active_hand() == null || usr.get_inactive_hand() == null) // Let me know if this has any problems -Yota
		switch(addons.len)
		if (INFINITY)
			var/selection = input("Please, select addon to deattach!", "Gun", null, null) as null|anything in addons
			deattach_attachment(selection)

		if(1)
				//ДОДЕЛАТЬ
			for (var/obj/item/attachment/A in addons)
				deattach_attachment(A)
		if(0)
				//sнужно что-то написать здесь
			usr << "<span class='notice'>There are no attachments.</span>"
			return
	else
		usr << "<span class='notice'>Освободите руку.</span>"
	update_icon()
	return

obj/item/gun/projectile/proc/deattach_attachment(var/obj/item/attachment/A)
	if(istype(A, /obj/item/attachment/suppressor))
		var/obj/item/attachment/suppressor/S = A
		if(usr.l_hand != src && usr.r_hand != src)
			..()
			return
		usr << "<span class='notice'>You unscrew [A] from [src].</span>"
		playsound (src.loc, 'sound/stalker/weapons/detach_addon.ogg', 50, 1, 0)
		usr.put_in_hands(S)
		suppressed = 0
		silenced = 0
		addons.Remove(S)
		return


	if(istype(A, /obj/item/attachment/scope))
		var/obj/item/attachment/scope/S = A
		if(usr.l_hand != src && usr.r_hand != src)
			..()
			return
		usr << "<span class='notice'>You unscrew [A] from [src].</span>"
		playsound (src.loc, 'sound/stalker/weapons/detach_addon.ogg', 50, 1, 0)
		usr.put_in_hands(S)
		zoomable = FALSE
		zoomed = FALSE
		scoped = 0
		scope_zoom = 0
		addons.Remove(S)
		return

/obj/item/gun/projectile/attackby(obj/item/attachment/A, mob/user, params)
	..()

	if(istype(A, /obj/item/attachment/suppressor))
		var/obj/item/attachment/suppressor/S = A
		for(var/atype in S.types)
			if(ispath(type, atype))
				if(!suppressed)
					if(!user.unEquip(A))
						return
					user << "<span class='notice'>You screw [S] onto [src].</span>"
					playsound (src.loc, 'sound/stalker/weapons/attach_addon.ogg', 50, 1, 0)
					suppressed = A
					S.initial_w_class = w_class
					fire_sound = 'sound/stalker/weapons/silencer.ogg'
					w_class = 3 //so pistols do not fit in pockets when suppressed
					A.loc = src
					silenced = 1
					update_icon()
					addons += S
					return
				else
					user << "<span class='warning'>[src] already has a suppressor!</span>"
					return

		user << "<span class='warning'>You can't seem to figure out how to fit [S] on [src]!</span>"
		return

	if(istype(A, /obj/item/attachment/scope))
		var/obj/item/attachment/scope/S = A
		if(type in S.types)
			if(!zoomable)
				if(!user.unEquip(A))
					return
				user << "<span class='notice'>You screw [S] onto [src].</span>"
				playsound (src.loc, 'sound/stalker/weapons/attach_addon.ogg', 50, 1, 0)
				zoomable = 1
				A.loc = src
				update_icon()
				addons += S
				scope_zoom = 1
				scoped = 1
				return
			else
				user << "<span class='warning'>[src] already has a scope!</span>"
				return
		else
			user << "<span class='warning'>You can't seem to figure out how to fit [S] on [src]!</span>"
			return
	return 0


/obj/item/gun/projectile/verb/scoped()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1
	var/scoped = 1
	if (scoped)
		toggle_scope(usr,scope_zoom)

