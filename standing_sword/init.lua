minetest.register_node("standing_sword:stone_sword", {
	description = "Standing Stone Sword",
	drawtype = "torchlike",
	tiles = {"standing_sword_stone.png"},
	inventory_image = "standing_sword_stone.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_stone"
})

minetest.register_node("standing_sword:steel_sword", {
	description = "Standing Steel Sword",
	drawtype = "torchlike",
	tiles = {"standing_sword_steel.png"},
	inventory_image = "standing_sword_steel.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_steel"
})

minetest.register_node("standing_sword:bronze_sword", {
	description = "Standing Bronze Sword",
	drawtype = "torchlike",
	tiles = {"standing_sword_bronze.png"},
	inventory_image = "standing_sword_bronze.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_bronze"
})

minetest.register_node("standing_sword:mese_sword", {
	description = "Standing Mese Sword",
	drawtype = "torchlike",
	tiles = {"standing_sword_mese.png"},
	inventory_image = "standing_sword_mese.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_mese"
})

minetest.register_node("standing_sword:diamond_sword", {
	description = "Standing Diamond Sword",
	drawtype = "torchlike",
	tiles = {"standing_sword_diamond.png"},
	inventory_image = "standing_sword_diamond.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_diamond"
})

minetest.register_craft({
	output = "standing_sword:stone_sword",
	recipe = {
	    {"default:sword_stone","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "standing_sword:steel_sword",
	recipe = {
	    {"default:sword_steel","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "standing_sword:bronze_sword",
	recipe = {
	    {"default:sword_bronze","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "standing_sword:mese_sword",
	recipe = {
	    {"default:sword_mese","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "standing_sword:diamond_sword",
	recipe = {
	    {"default:sword_diamond","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )
