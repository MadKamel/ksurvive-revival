local g_groups = {attached_node = 1, sliceable = 1}
local gm_groups = {attached_node = 1, sliceable = 1, mature_grass = 1}
local bahiagrass_soil_types = {"group:wet_soil"}
local juncus_soil_types = {"group:sand"}
local growthchance = 1.25
local growthrate = 10


minetest.register_node("ks_flora:bahia_0", {
	description = "Bahiagrass Seeds",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.bahia_0.png"},
	inventory_image = "flora.bahia_seeds.png",
	wield_image = "flora.bahia_seeds.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:bahia_1", {
	description = "Bahiagrass Sprouts",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.bahia_1.png"},
	inventory_image = "flora.bahia_1.png",
	wield_image = "flora.bahia_1.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:bahia_2", {
	description = "Young Bahiagrass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.bahia_2.png"},
	inventory_image = "flora.bahia_2.png",
	wield_image = "flora.bahia_2.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:bahia_3", {
	description = "Young Bahiagrass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.bahia_3.png"},
	inventory_image = "flora.bahia_3.png",
	wield_image = "flora.bahia_3.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:bahia", {
	description = "Mature Bahiagrass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.bahia_4.png"},
	inventory_image = "flora.bahia_4.png",
	wield_image = "flora.bahia_4.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = gm_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},
	drop = {
		max_items = 3,
		items = {
			{items = {"ks_flora:bahia_0 5"}},
			{items = {"ks_flora:bahia_0 1"}, rarity = 2},
			{items = {"ks_flora:bahia_0 1"}, rarity = 4},
		}
	},
	sounds = ks_sounds.leafynode_sounds,
})



-- Now, make bahiagrass actually grow.
minetest.register_abm({
	nodenames = {"ks_flora:bahia_0"},
	neighbors = bahia_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:bahia_1"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:bahia_1"},
	neighbors = bahia_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:bahia_2"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:bahia_2"},
	neighbors = bahia_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:bahia_3"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:bahia_3"},
	neighbors = bahia_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:bahia"})
	end
})





-- Snowy dead shrub
minetest.register_node("ks_flora:snowy_dead_shrub", {
	description = "Dead Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.snowy_dead_shrub.png"},
	inventory_image = "flora.snowy_dead_shrub_bundle.png",
	wield_image = "flora.snowy_dead_shrub_bundle.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
	sounds = ks_sounds.leafynode_sounds,
})





-- Juncus rushes.
minetest.register_node("ks_flora:juncus_0", {
	description = "Juncus Seeds",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_0.png"},
	inventory_image = "flora.juncus_seeds.png",
	wield_image = "flora.juncus_seeds.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_1", {
	description = "Juncus Sprouts",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_1.png"},
	inventory_image = "flora.juncus_1.png",
	wield_image = "flora.juncus_1.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_2", {
	description = "Young Juncus Rushes",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_2.png"},
	inventory_image = "flora.juncus_2.png",
	wield_image = "flora.juncus_2.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_2_twin", {
	description = "Young Twin Juncus Rushes",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_2_twin.png"},
	inventory_image = "flora.juncus_2_twin.png",
	wield_image = "flora.juncus_2_twin.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_3", {
	description = "Young Juncus Rushes",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_3.png"},
	inventory_image = "flora.juncus_3.png",
	wield_image = "flora.juncus_3.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_3_twin", {
	description = "Young Twin Juncus Rushes",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_3_twin.png"},
	inventory_image = "flora.juncus_3_twin.png",
	wield_image = "flora.juncus_3_twin.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = g_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus", {
	description = "Mature Juncus Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_4.png"},
	inventory_image = "flora.juncus_4.png",
	wield_image = "flora.juncus_4.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = gm_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {
		max_items = 3,
		items = {
			{items = {"ks_flora:juncus_0"}},
			{items = {"ks_flora:juncus_0"}, rarity = 5},
			{items = {"ks_flora:juncus_stalk"}}
		}
	},
	sounds = ks_sounds.leafynode_sounds,
})

minetest.register_node("ks_flora:juncus_twin", {
	description = "Mature Twin Juncus Rushes",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flora.juncus_4_twin.png"},
	inventory_image = "flora.juncus_4_twin.png",
	wield_image = "flora.juncus_4_twin.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = gm_groups,
	
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
	},
	drop = {
		max_items = 4,
		items = {
			{items = {"ks_flora:juncus_0"}},
			{items = {"ks_flora:juncus_0"}, rarity = 5},
			{items = {"ks_flora:juncus_0"}, rarity = 5},
			{items = {"ks_flora:juncus_stalk 2"}}
		}
	},
	sounds = ks_sounds.leafynode_sounds,
})

-- Now, make juncus actually grow also.
minetest.register_abm({
	nodenames = {"ks_flora:juncus_0"},
	neighbors = juncus_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_1"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_1"},
	neighbors = juncus_soil_types,
	interval = growthrate/2,
	chance = growthchance/2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_2_twin"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_2_twin"},
	neighbors = juncus_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_3_twin"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_3_twin"},
	neighbors = juncus_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_twin"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_1"},
	neighbors = juncus_soil_types,
	interval = growthrate/2,
	chance = growthchance/2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_2"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_2"},
	neighbors = juncus_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus_3"})
	end
})

minetest.register_abm({
	nodenames = {"ks_flora:juncus_3"},
	neighbors = juncus_soil_types,
	interval = growthrate,
	chance = growthchance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_flora:juncus"})
	end
})
