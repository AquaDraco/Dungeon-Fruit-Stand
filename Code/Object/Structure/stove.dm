/obj/structure/stove
	icon = 'stove.dmi'
	icon_state = "stove"

	density = 1

	var/in_use = 0

/obj/structure/stove/Click()
	if(in_use)
		return

	in_use = 1
	usr.contents += new /obj/food/dragonfruit