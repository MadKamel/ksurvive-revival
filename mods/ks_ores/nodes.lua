minetest.register_node("ks_ores:bauxite_block", {
	description = "Block of Bauxite",
	tiles = {"ores.bauxite_block.png"},
	groups = {bauxite = 1, chippable = 1, falling_node = 1},
})

minetest.register_node("ks_ores:chalcocite_block", {
	description = "Block of Chalcocite",
	tiles = {"ores.chalcocite_block.png"},
	groups = {chalcocite = 1, chippable = 1, falling_node = 1},
})



minetest.register_craft({
	recipe = {
		{"ks_ores:bauxite", "ks_ores:bauxite", "ks_ores:bauxite"},
		{"ks_ores:bauxite", "ks_ores:bauxite", "ks_ores:bauxite"},
		{"ks_ores:bauxite", "ks_ores:bauxite", "ks_ores:bauxite"}
	},
	output = "ks_ores:bauxite_block"
})

minetest.register_craft({
	recipe = {
		{"ks_ores:chalcocite", "ks_ores:chalcocite", "ks_ores:chalcocite"},
		{"ks_ores:chalcocite", "ks_ores:chalcocite", "ks_ores:chalcocite"},
		{"ks_ores:chalcocite", "ks_ores:chalcocite", "ks_ores:chalcocite"}
	},
	output = "ks_ores:chalcocite_block"
})