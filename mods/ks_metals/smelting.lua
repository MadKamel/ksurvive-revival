--local smelting_interval = 1
--local smelting_chance = 1
--local forming_interval = 1
--local forming_chance = 1
minetest.register_alias("smelting_slag", "ks_terrain:dolomite_gravel")



-- register smelting abms for bauxite
--minetest.register_abm({
--	neighbors = {"group:smelter"},
--	nodenames = {"ks_terrain:dolomite_with_bauxite"},
--	interval = smelting_interval,
--	chance = smelting_chance,
--	action = function(pos, node, active_object_count, active_object_count_wider)
--		local pos = {x = pos.x, y = pos.y, z = pos.z}
--		local pos_top = {x = pos.x, y = pos.y+1, z = pos.z}
--		minetest.set_node(pos, {name = "smelting_slag"})
--		minetest.set_node(pos_top, {name = "ks_metals:alumina_dust"})
--	end
--})

--minetest.register_abm({
--	neighbors = {"group:igniter"},
--	nodenames = {"ks_metals:alumina"},
--	interval = forming_interval,
--	chance = forming_chance,
--	action = function(pos, node, active_object_count, active_object_count_wider)
--		local pos = {x = pos.x, y = pos.y, z = pos.z}
--		minetest.set_node(pos, {name = "ks_metals:aluminium"})
--	end
--})
