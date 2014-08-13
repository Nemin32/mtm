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




minetest.register_craft({
output = "testblock:XD",
recipe = {
{"default:wood","default:wood",""},
{"default:wood","default:wood",""},
{"","",""},
}

})