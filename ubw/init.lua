
minetest.register_node("ubw:sword", {
	description = "My bone",
	drawtype = "torchlike",
	tiles = {"uwb_sword.png"},
	inventory_image = "asd.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_stone"
})



minetest.register_craft({
	output = "ubw:sword",
	recipe = {
	    {"default:sword_stone","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )