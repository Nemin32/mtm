minetest.register_node("testblock:XD",
{
tiles={"testblock_xd.png"},
groups={crumbly=1,oddly_breakable_by_hand=2}
}

)

minetest.register_node("testblock:lamp",
{
tiles={"testblock_lamp.png"},
groups={choppy=1,dig_immediate=1,igniter=3},light_source=14
}

)

<<<<<<< HEAD
minetest.register_craft({
output = "testblock:lamp",
recipe = {
{"default:wood","default:wood","default:wood"},
{"default:wood","default:coal","default:wood"},
{"default:wood","default:wood","default:wood"}
}
})
=======

>>>>>>> 4c916e953689b9cc6603e5821f025f6b54c133ba


minetest.register_craft({
output = "testblock:XD",
recipe = {
{"default:wood","default:wood",""},
{"default:wood","default:wood",""},
{"","",""},
}

<<<<<<< HEAD
})

minetest.register_abm({
nodenames = "testblock:XD",
neighbors = nil,
interval = 3.0,
chance = 1,
action = 

function(pos)
	taroloz = pos.z
	for i = 0, 15, 1  do
		pos.x = pos.x+1
		for p = 0, 15, 1 do
			pos.z = pos.z + 1
			minetest.set_node(pos, {name = "default:wood"})
		end
		pos.z = taroloz
	end
end
})
=======
})
>>>>>>> 4c916e953689b9cc6603e5821f025f6b54c133ba
