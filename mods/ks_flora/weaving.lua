minetest.register_craftitem("ks_flora:juncus_stalk", {
	description = "Juncus Stalk",
	inventory_image = "flora.juncus_stalk.png",
	on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ks_flora:juncus_patch", {
	description = "Patch of Woven Juncus Stalk",
	inventory_image = "flora.juncus_patch.png"
})

minetest.register_node("ks_flora:juncus_block", {
	description = "Block of Woven Juncus Stalk",
	tiles = {"flora.juncus_block.png"},
	groups = {sliceable = 1, falling_node = 1},
	sounds = ks_sounds.leafynode_sounds,
})
