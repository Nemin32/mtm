minetest.register_tool("wartest:frostmuorne", {
	description = "Frost Mourne",
	inventory_image = "wartest_frostmuorne.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=5},
		},
		damage_groups = {fleshy=10}
	}
})



minetest.register_craft({
	output = "wartest:frostmuorne",
	recipe = {
	    {"","default:diamondblock",""},
	    {"default:diamondblock","default:diamondblock","default:diamondblock"},
        {"default:mese","default:stick","default:mese"}
    }
   }
  )