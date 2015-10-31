var/customers = 0

/world/New()

	while(1)
		sleep(rand(10,30))
		if(customers < 24)
			new /mob/customer(locate(/area/entrance))
			customers++