/obj/effect/blob/node
	name = "blob node"
	icon = 'icons/mob/blob.dmi'
	icon_state = "blob_node"
	health = 100
	fire_resist = 2


/obj/effect/blob/node/New(loc, var/h = 100)
	blob_nodes += src
	processing_objects.Add(src)
	..(loc, h)

/obj/effect/blob/node/fire_act(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	return

/obj/effect/blob/node/Destroy()
	blob_nodes -= src
	processing_objects.Remove(src)
	..()

/obj/effect/blob/node/Life()
	for(var/i = 1; i < 8; i += i)
		Pulse(5, i)
	health = min(initial(health), health + 1)

/obj/effect/blob/node/update_icon()
	if(health <= 0)
		qdel(src)
		return
	return

/obj/effect/blob/node/minicore
	name = "blob core"
	icon_state = "blob_core"
	health = 200

/obj/effect/blob/node/minicore/Life()
	..()
	for(var/b_dir in alldirs)
		if(!prob(5))
			continue
		var/obj/effect/blob/normal/B = locate() in get_step(src, b_dir)
		if(B)
			B.change_to(/obj/effect/blob/shield)