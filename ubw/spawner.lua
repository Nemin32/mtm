dosquare = 1

minetest.register_node("ubw:spawner", {
description = "Unlimited Wlade Borks spawner",
tiles = {"ubw_spawner.png"},
groups = {dig_immediate = 2},
on_construct = 
function(pos)
	dosquare = 1
end
}
)



minetest.register_abm({
nodenames = "ubw:spawner",
interval = 3.0,
chance = 1,
action = 

function(pos)
	---[[
	tarol = pos
	zcord = tarol.z
	
	if dosquare == 1 then
		for i = 0, 25, 1  do
			tarol.x = tarol.x+1
			for p = 0, 25, 1 do
				tarol.z = tarol.z+1
				minetest.set_node(tarol, {name = "ubw:dirt_active"})
			end
			tarol.z = zcord
		end
		dosquare = 0
		print(dosquare)
	end
	--]]
	
	minetest.remove_node(pos)
end
})
minetest.register_on_dignode(
function(oldnode)
	if oldnode.name == "ubw:spawner" then
		dosquare = 1
	end
end
) 