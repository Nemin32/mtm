minetest.register_node("ubw:sword", {
	description = "Standing Stone Sword",
	drawtype = "torchlike",
	tiles = {"ubw_sword.png"},
	inventory_image = "ubw_sword.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_stone"
})

minetest.register_node("ubw:steel_sword", {
	description = "Standing Steel Sword",
	drawtype = "torchlike",
	tiles = {"ubw_steel_sword.png"},
	inventory_image = "ubw_steel_sword.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_steel"
})

minetest.register_node("ubw:bronze_sword", {
	description = "Standing Bronz Sword",
	drawtype = "torchlike",
	tiles = {"ubw_bronze_sword.png"},
	inventory_image = "ubw_bronze_sword.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_bronze"
})

minetest.register_node("ubw:meses_sword", {
	description = "Standing Mese Sword",
	drawtype = "torchlike",
	tiles = {"ubw_meses_sword.png"},
	inventory_image = "ubw_meses_sword.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_mese"
})

minetest.register_node("ubw:diamond_sword", {
	description = "Standing Diamond Sword",
	drawtype = "torchlike",
	tiles = {"ubw_diamond_sword.png"},
	inventory_image = "ubw_diamond_sword.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_diamond"
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

minetest.register_craft({
	output = "ubw:steel_sword",
	recipe = {
	    {"default:sword_steel","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "ubw:bronze_sword",
	recipe = {
	    {"default:sword_bronze","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "ubw:meses_sword",
	recipe = {
	    {"default:sword_mese","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_craft({
	output = "ubw:diamond_sword",
	recipe = {
	    {"default:sword_diamond","",""},
	    {"","",""},
        {"","",""}
    }
   }
  )

minetest.register_node("ubw:dirt_active", {
description = "Burnt earth - You feel the power of creation while holding this block",
tiles = {"ubw_dirt.png"},
groups = {oddly_breakable_by_hand = 3}
})

minetest.register_node("ubw:dirt_inactive", {
description = "Burnt earth - You don't feel anything while holding this block",
tiles = {"ubw_dirt.png"},
groups = {oddly_breakable_by_hand = 3}
})

minetest.register_abm({
nodenames = "ubw:dirt_active",
interval = 1.0,
chance = 4,
action = 

function(pos)
	randomnum = math.random(0,1)
	if randomnum == 1 then
		pos.y = pos.y+1
		minetest.set_node(pos, {name = "ubw:sword"})
		pos.y = pos.y-1
	end
	
	minetest.set_node(pos, {name = "ubw:dirt_inactive"})
end
})

dofile(minetest.get_modpath("ubw").."/spawner.lua")