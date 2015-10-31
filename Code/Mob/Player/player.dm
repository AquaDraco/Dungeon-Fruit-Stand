/mob/player
	name = "Waiter"

	icon = 'human.dmi'
	icon_state = "proto_a"

	var/obj/money/money = new /obj/money()

/mob/player/Stat()
	statpanel("Inventory", contents)

/client/New()
	mob = new /mob/player(locate(/area/entrance))
	var/mob/player/P = mob
	P.contents += P.money