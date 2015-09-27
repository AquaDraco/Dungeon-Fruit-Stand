/obj/money
	name = "0 Money"

	icon = 'money.dmi'
	icon_state = "money"

	var/cash = 0

/obj/money/proc/add_money(var/cash2add)
	cash += cash2add
	name = "[cash] Money"