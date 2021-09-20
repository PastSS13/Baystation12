/mob/living/simple_animal/hostile/hostiles/mutant
	name = "mutant"
	desc = "A monstrously huge wall of flesh, it looks like you took who knows how many humans and put them together..."
	see_in_dark = 10
	maxHealth = 250
	health = 250
	var/gib_targets = 1 //������
	icon = 'icons/stalker/stalker.dmi'
	var/deletable = 1 //Self-deletable dead bodies




/*
/mob/living/simple_animal/hostile/hostiles/mutant/death(gibbed)
	..()
	if(deletable)
		spawn(300)
			qdel(src)
*/
/*
/mob/living/simple_animal/hostile/hostiles/mutant/Move(atom/NewLoc, direct)
	if(get_area(NewLoc).safezone)
		if(src.client && (src.client.prefs.chat_toggles & CHAT_LANGUAGE))
			src << "<span class='warning'>You can't be here!</span>"
		else
			src << "<span class='warning'>�� �� ������ ��������c� � ���� ����!</span>"
		return 0
	return ..()
*/
/mob/living/simple_animal/hostile/hostiles/mutant/AttackingTarget()
	..()
	if(istype(target, /mob/living))
		var/mob/living/L = target
		if (L.stat == DEAD && gib_targets)
			if(ishuman(L))
				var/mob/living/carbon/human/H = L
				if(prob(50))
					H.unEquip(H.gloves)
				if(prob(50))
					H.unEquip(H.glasses)
				if(prob(50))
					H.unEquip(H.head)
				if(prob(50))
					H.unEquip(H.shoes)
				if(prob(100))
					H.unEquip(H.back)
				H.unEquip(H.back)
				H.unEquip(H.wear_id)
			L.gib()
			visible_message("<span class='danger'>[src] ��������� [L] �� �������!</span>")
			src << "<span class='userdanger'>�� ��������� [L] � ��������������� ���� ��������!</span>"
			src.revive()

/mob/living/simple_animal/hostile/hostiles/mutant/mrspooky
	name = "Mr.Spooky"
	desc = "������� ����� ������, 3spooky5u"
	icon = 'icons/mob/human.dmi'
	icon_state = "skeleton_s"
	icon_living = "skeleton_s"
	icon_dead = "skeleton_dead"
	turns_per_move = 5
	speak_emote = list("spooks")
	a_intent = "harm"
	maxHealth = 100
	health = 40
	speed = 1
	natural_weapon = /obj/item/natural_weapon/claws/weak
	minbodytemp = 0
	maxbodytemp = 1500
	attacktext = "spooks"
	attack_sound = 'sound/hallucinations/wail.ogg'
	environment_smash = 1
	faction = "skeleton"
	see_in_dark = 8
	layer = MOB_LAYER - 0.1

/mob/living/simple_animal/hostile/hostiles/mutant/spider
	name = "spider mutant"
	desc = "������������ ����. ���� ���� ���� - ���-�� �� ������ � ������."
	//eng_desc = "Mutant spider."
	turns_per_move = 5
	speed = 1
	a_intent = "harm"
	natural_weapon = /obj/item/natural_weapon/claws/strong
	icon = 'icons/stalker/metro-2/Metro_mobs.dmi'
	icon_state = "spider"
	icon_living = "spider"
	icon_dead = "spider_dead"
	attacktext = "bites"
	speak_emote = list("hisses")
	faction = "stalker_mutants1"
	attack_sound = 'sound/stalker/mobs/mutants/attack/spider_attack.ogg'
	//idle_sounds = list('sound/stalker/mobs/mutants/idle/spider_idle1.ogg',
	//					'sound/stalker/mobs/mutants/idle/spider_idle2.ogg')
	maxHealth = 100
	//healable = 1
	see_in_dark = 8
	environment_smash = 0
	layer = MOB_LAYER - 0.1
	move_to_delay = 1.2 //Real speed of a mob
	//vision_range = 12
	//aggro_//vision_range = 12

/mob/living/simple_animal/hostile/hostiles/mutant/ghoulupper
	name = "Mutant dog"
	desc = "���� �� �������� ������������ �������������� ������� ����. �������� �����, ��������� � ���������� ���� ������� ����, ��� �����."
	//eng_desc = "Just another ghoul."
	turns_per_move = 5
	speed = 1
	a_intent = "harm"
	natural_weapon = /obj/item/natural_weapon/claws/strong
	icon = 'icons/stalker/metro-2/stalker.dmi'
	icon_state = "white_dog"
	icon_living = "white_dog"
	icon_dead = "white_dog_dead"
	attacktext = "claws at"
	speak_emote = list("growls","roars")
	faction = "stalker_mutants1"
	attack_sound = 'sound/stalker/mobs/mutants/attack/dog_attack.ogg'
	//idle_sounds = list('sound/stalker/mobs/mutants/idle/bdog_idle_1.ogg',
	//					'sound/stalker/mobs/mutants/idle/bdog_idle_2.ogg',
	//					'sound/stalker/mobs/mutants/idle/bdog_idle_3.ogg')
	//death_sound = 'sound/stalker/mobs/mutants/death/dog_death.ogg'
	maxHealth = 250
	//healable = 1
	see_in_dark = 2
	environment_smash = 0
	layer = MOB_LAYER - 0.1
	move_to_delay = 1.2 //Real speed of a mob
	//vision_range = 10
	//aggro_//vision_range = 10

/mob/living/simple_animal/hostile/hostiles/mutant/ghoulupper/AttackingTarget()
	..()
	if(istype(target, /mob/living/carbon))
		var/mob/living/carbon/C = target
		if(C.health > 25)
			var/anydir
			target_last_loc = target.loc
			walk_away(src, get_step(src, anydir), 7, move_to_delay)

/mob/living/simple_animal/hostile/hostiles/mutant/ghoul
	name = "Ghoul"
	desc = "����� - � � ������ �����. ����� ����� ��������, ���� �� �������� � ��������."
	turns_per_move = 5
	speed = 2
	a_intent = "harm"
	natural_weapon = /obj/item/natural_weapon/claws/strong
	icon = 'icons/stalker/metro-2/Metro_mobs.dmi'
	icon_state = "nosalis"
	icon_living = "nosalis"
	icon_dead = "nosalis_dead"
	attacktext = "claws at"
	speak_emote = list("growls", "roars")
	maxHealth = 200
	//healable = 1
	attack_sound = 'sound/stalker/mobs/mutants/attack/bloodsucker_attack.ogg'
	//idle_sounds = list('sound/stalker/mobs/mutants/idle/flesh_idle_1.ogg',
		//				'sound/stalker/mobs/mutants/idle/flesh_idle_2.ogg')
	//death_sound = 'sound/stalker/mobs/mutants/death/flesh_death.ogg'
	see_in_dark = 8
	faction = "stalker_mutants1"
	//del_on_death = 0
	//environment_smash = 1
	layer = MOB_LAYER - 0.1
	ranged = 1
//	ranged_cooldown = 1 //By default, start the Goliath with his cooldown off so that people can run away quickly on first sight
//	ranged_cooldown_cap = 2
	var/leaping = 0
	move_to_delay = 1.2
	//vision_range = 15
	//aggro_//vision_range = 15

/mob/living/simple_animal/hostile/hostiles/mutant/ghoul/New()
	..()
	if(prob(50))
		icon = 'icons/stalker/metro-2/Metro_mobs.dmi'
		icon_state = "nosalis"
		icon_living = "nosalis"
		icon_dead = "nosalis_dead"

/mob/living/simple_animal/hostile/hostiles/mutant/ghoul/OpenFire()
	if(get_dist(src, target) <= 4)
		leaping = 1
		//throw_at_fast(target, 7, 1)
		throw_at(target, 15, 1, spin=1, diagonals_first = 1)
		leaping = 0
		ranged_cooldown = ranged_cooldown_cap
	return
				//sleep(10)

/mob/living/simple_animal/hostile/hostiles/mutant/ghoul/throw_impact(atom/A)

	if(!leaping)
		return ..()

	if(A)
		if(istype(A, /mob/living))
			var/mob/living/L = A
			var/blocked = 0
			if(ishuman(A))
				var/mob/living/carbon/human/H = A
				if(H.check_shields(90, "the [name]", src, natural_weapon = "THROWN_PROJECTILE_ATTACK"))
					blocked = 1
			if(!blocked)
				L.visible_message("<span class ='danger'>[src] pounces on [L]!</span>", "<span class ='userdanger'>[src] pounces on you!</span>")
				L.Weaken(1)
				//sleep(2)//Runtime prevention (infinite bump() calls on hulks)
				step_towards(src,L)
		else if(A.density && !A.CanPass(src))
			visible_message("<span class ='danger'>[src] smashes into [A]!</span>", "<span class ='alertalien'>[src] smashes into [A]!</span>")
			weakened = 2

		if(leaping)
			leaping = 0
			update_icons()


/mob/living/simple_animal/hostile/hostiles/mutant/flesh
	name = "flesh"
	desc = "������������ ������."
	turns_per_move = 5
	speed = 5
	a_intent = "harm"
	icon_state = "plot"
	icon_living = "plot"
	icon_dead = "plot_dead"
	natural_weapon = /obj/item/natural_weapon/claws/strong
	attacktext = "crashes into"
	maxHealth = 40
	//healable = 5
	attack_sound = 'sound/stalker/mobs/mutants/attack/flesh_attack.ogg'
	//idle_sounds = list('sound/stalker/mobs/mutants/idle/flesh_idle_1.ogg',
	//					'sound/stalker/mobs/mutants/idle/flesh_idle_2.ogg')
	//death_sound = 'sound/stalker/mobs/mutants/death/flesh_death.ogg'
	see_in_dark = 4
	faction = "stalker_mutants1"
	environment_smash = 1
	//deathmessage = "The flesh makes a death scream!"
	layer = MOB_LAYER - 0.1
	move_to_delay = 3
	//vision_range = 7
	//aggro_//vision_range = 7

/mob/living/simple_animal/hostile/hostiles/mutant/kaban
	name = "boar"
	desc = "�������� ���������."
	//eng_desc = "While less touched by mutation physically, as compared to other mutants, the Boars of the Zone remains ugly and loathsome.The smell coming from his mouth smells of carrion and grass.His posture shows that he is able to go at full speed towards an enemy, so staying away would be the best option to kill him. His meat is sold at a good price to Skadovsk merchants."
	turns_per_move = 5
	speed = 5
	a_intent = "harm"
	search_objects = 1
	icon_state = "kaban"
	icon_living = "kaban"
	icon_dead = "kaban_dead"
	attacktext = "crashes into"
	speak_emote = list("grunts")
	//emote_see = list("grunts aggressively!")
	maxHealth = 150
	//healable = 1
	//melee_damage_lower = 25
	attack_sound = 'sound/stalker/mobs/mutants/attack/boar_attack.ogg'
	//idle_sounds = list('sound/stalker/mobs/mutants/idle/boar_idle_1.ogg',
	//					'sound/stalker/mobs/mutants/idle/boar_idle_2.ogg',
	//					'sound/stalker/mobs/mutants/idle/boar_idle_3.ogg')
	//death_sound = 'sound/stalker/mobs/mutants/death/boar_death.ogg'
	//melee_damage_upper = 40
	//fearborder = 18
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	//del_on_death = 0
	environment_smash = 1

	//deathmessage = "The boar makes a death scream!"
	layer = MOB_LAYER - 0.1
	//random_loot = 1
	//atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	natural_weapon = /obj/item/natural_weapon/claws/strong
	move_to_delay = 3
	//rating_add = 50
	//vision_range = 7
	//aggro_//vision_range = 7

	/*��� ������� � �������� �������
	����������� ����� � ������ � �������
	for(var/o=0, o<10, o++)
		target = get_turf(get_step(target,cur_dir))
	L.throw_at(target, 200, 100)
	*/

/mob/living/simple_animal/hostile/hostiles/mutant/bloodsucker
	name = "bloodsucker"
	desc = "���� ������ ������ ������."
	//eng_desc = "A rather disgusting-looking type of mutant with the same physical properties as a human besides the absence of genital organs,thus making the difference between male or female more difficult to do.Tentacles covered with blood seem to have replaced the lower part of the jaw, and sharp claws have replaced the end of the fingers.The guttural breathing of the mutant freezes your blood."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 0
	icon_state = "bloodsucker"
	icon_living = "bloodsucker"
	icon_dead = "bloodsucker_dead"
	attacktext = "slashes"
	speak_emote = list("growls", "roars")
	//emote_see = list("growls!", "roars!")
	maxHealth = 300
	//healable = 1
	//melee_damage_lower = 30
	attack_sound = 'sound/stalker/mobs/mutants/attack/bloodsucker_attack.ogg'
	//idle_sounds =	list('sound/stalker/mobs/mutants/idle/bloodsucker_idle_1.ogg'

	//death_sound = 'sound/stalker/mobs/mutants/death/bloodsucker_death.ogg'
	//melee_damage_upper = 35
	//fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	//del_on_death = 0

	//deathmessage = "The bloodsucker makes a death scream!"
	layer = MOB_LAYER - 0.1
	//random_loot = 1
	//atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	natural_weapon = /obj/item/natural_weapon/claws/strong
	move_to_delay = 1.8

	//rating_add = 150
	//vision_range = 7
	//aggro_//vision_range = 7

/mob/living/simple_animal/hostile/hostiles/mutant/bloodsucker/Life()
	if(..())
		if(ckey)
			return
		handle_invisibility()

/mob/living/simple_animal/hostile/hostiles/mutant/bloodsucker/proc/handle_invisibility()
	if(target)
		playsound(src, 'sound/stalker/mobs/mutants/idle/bloodsucker_breath.ogg', 40, 0)
		switch(get_dist(src, target))
			if(0 to 2)
				icon_state = "bloodsucker"
			else
				icon_state = "bloodsucker_invisible"
		return

	if(icon_state != initial(icon_state))
		icon_state = initial(icon_state)

/mob/living/simple_animal/hostile/hostiles/mutant/bloodsucker/AttackingTarget()
	..()
	icon_state = "bloodsucker"
	if(istype(target, /mob/living/carbon))
		var/mob/living/carbon/C = target
		if(C.health > 35)
			icon_state = "bloodsucker_invisible"
			var/anydir
			target_last_loc = target.loc
			walk_away(src, get_step(src, anydir), 7, move_to_delay)

/mob/living/simple_animal/hostile/hostiles/mutant/pseudog
	name = "psy-dog"
	desc = "�������� ��."
	//eng_desc = "Shaggy dog."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 1
	icon_state = "psydog"
	icon_living = "psydog"
	icon_dead = "psydog_dead"
	attacktext = "bites"
	speak_emote = list("growls", "roars")
	//emote_see = list("growls!", "roars!")
	maxHealth = 80
	//healable = 1
	//melee_damage_lower = 15
	attack_sound = 'sound/stalker/mobs/mutants/attack/pdog_attack.ogg'
	//idle_sounds =	list('sound/stalker/mobs/mutants/idle/pdog_idle_1.ogg',
	//					'sound/stalker/mobs/mutants/idle/pdog_idle_2.ogg',
	//					'sound/stalker/mobs/mutants/idle/pdog_idle_3.ogg',
	//					'sound/stalker/mobs/mutants/idle/pdog_idle_4.ogg'
	//					)
	//death_sound = 'sound/stalker/mobs/mutants/death/pdog_death.ogg'
	//melee_damage_upper = 20
	//fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	//del_on_death = 0

	//deathmessage = "The pseudog makes a sinister howl!"
	layer = MOB_LAYER - 0.1
	//random_loot = 1
	//atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	natural_weapon = /obj/item/natural_weapon/claws/strong
	move_to_delay = 1.4
	//rating_add = 100

