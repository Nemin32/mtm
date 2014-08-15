function maybe(x) 
	if 100 * math.random() < x then 
		return true 
	else 
		return false
	end
end



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
	randomSword = math.random(0,4)
	Swordname = ""
	
	
	if maybe(1) then Swordname = "standing_sword:diamond_sword"
	elseif maybe(5) then Swordname = "standing_sword:mese_sword"	
	elseif maybe(20) then Swordname = "standing_sword:steel_sword"
	elseif maybe(35) then Swordname = "standing_sword:bronze_sword"
	else Swordname = "standing_sword:stone_sword"
	end
	
	if randomnum == 1 then
		pos.y = pos.y+1

		minetest.set_node(pos, {name = Swordname})
		pos.y = pos.y-1
	end
	
	minetest.set_node(pos, {name = "ubw:dirt_inactive"})
end
})

dofile(minetest.get_modpath("ubw").."/spawner.lua")