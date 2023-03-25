local modpath = minetest.get_modpath("ks_decor")

dofile(modpath.."/bricks.lua")
dofile(modpath.."/lamps.lua")
dofile(modpath.."/storage.lua")
dofile(modpath.."/mapgen.lua")
dofile(modpath.."/crafting.lua")

minetest.register_node("ks_decor:dev_door", {
	description = "Dev Door",
	drawtype = "airlike",
	inventory_image = {"decor.devdoor_item.png"},
	wield_image = {"decor.devdoor_item.png"},
	groups = {door = 1},
	on_construct = function(pos)
		minetest.swap_node(pos, {name = "ks_decor:dev_door_closed"})
	end,
	walkable = false
})

minetest.register_node("ks_decor:dev_door_open", {
	description = "Open Dev Door",
	drawtype = "mesh",
	mesh = "decor.door_generic_open.obj",
	tiles = {"decor.devdoor.png"},
	groups = {door = 1, choppable = 1},
	on_punch = function(pos, node, player, pointed_thing)
		minetest.swap_node(pos, {name = "ks_decor:dev_door_closed"})
	end,
	walkable = false,
	drop = "ks_decor:dev_door"
})

minetest.register_node("ks_decor:dev_door_closed", {
	description = "Closed Dev Door",
	drawtype = "mesh",
	mesh = "decor.door_generic_closed.obj",
	tiles = {"decor.devdoor.png"},
	groups = {door = 1, choppable = 1},
	on_punch = function(pos, node, player, pointed_thing)
		minetest.swap_node(pos, {name = "ks_decor:dev_door_open"})
	end,
	drop = "ks_decor:dev_door"
})
