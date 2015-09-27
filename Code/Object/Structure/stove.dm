/obj/structure/stove
	name = "Stove"

	icon = 'stove.dmi'
	icon_state = "stove"

	density = 1

	var/in_use = 0

/obj/structure/stove/stovechef
	name = "Dragon Fruit Chef"

	icon_state = "stovechef"

/obj/structure/stove/stovechef/Click()
	if(in_use)
		return

	if(src in view(1))
		in_use = 1
		usr.contents += new /obj/food/dragonfruit

		spawn(50)

		in_use = 0