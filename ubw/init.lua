
minetest.register_node("ubw:sword", {
	description = "My bone",
	drawtype = "torchlike",
	tiles = {"ubw_sword.png"},
	inventory_image = "asd.png",
	paramtype ="light",
	walkable = false,
	selection_box = torch_selectionbox,
	groups = {dig_immediate = 3},
	drop = "default:sword_stone"
})

minetest.register_node("ubw:spawner", {
description = "Unlimited Wlade Borks spawner",
tiles = {"ubw_spawner.png"},
groups = {dig_immediate = 2}
}
)

minetest.register_node("ubw:dirt", {
description = "Burnt earth",
tiles = {"ubw_dirt.png"},
groups = {oddly_breakable_by_hand = 3}
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
  
minetest.register_abm({
nodenames = "ubw:spawner",
interval = 3.0,
chance = 1,
action = 

function(pos)
	taroloz = pos.z
	for i = 0, 15, 1  do
		pos.x = pos.x+1
		for p = 0, 15, 1 do
			pos.z = pos.z + 1
			minetest.set_node(pos, {name = "ubw:dirt"})
		end
		pos.z = taroloz
	end
end
})

minetest.register_abm({
nodenames = "ubw:dirt",
interval = 3.0,
chance = 4,
action = 

function(pos)
	local didspawn = 1
	if didspawn == 1 then
		pos.y = pos.y+1
		minetest.set_node(pos, {name = "ubw:sword"})
		didspawn = 0
	end
end
})

  
  
  
  
  
  
  
  
  
  
  
  