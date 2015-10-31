/mob/customer
	name = "Customer"

	icon = 'human.dmi'
	icon_state = "blue"

	var/sitting = 0

	var/obj/structure/chair/seat

/mob/customer/New()

	for(var/obj/structure/chair/C in world)
		if(!C.occupied && !seat)
			seat = C

			seat.occupied = 1

			walk_to(src, C,,5)

	spawn()
		while(!sitting)
			if(seat in view(1,src))
				loc = seat.loc
				sitting = 1
				step_x = 0
				step_y = 0
			else
				sleep(10)

/mob/customer/Click()
	if(sitting && (src in view(1)))
		if(locate(/obj/food/dragonfruit) in usr.contents)
			var/obj/food/dragonfruit/D = locate(/obj/food/dragonfruit) in usr.contents
			usr.contents -= D

			var/mob/player/P = usr

			P.money.add_money(1)

			seat.occupied = 0

			customers--



			del src