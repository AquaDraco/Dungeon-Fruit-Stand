/obj/structure/chair
	name = "Chair"

	var/occupied = 0

/obj/structure/chair/red
	name = "Red Chair"

	icon = 'chair.dmi'
	icon_state = "red"

	density = 1

/obj/structure/chair/New()

	var/obj/structure/table/T = locate(/obj/structure/table) in view(1, src)

	if(T)
		dir = get_dir(src, T)
