minetest.register_tool("ks_tools:maple_adze", {
	description = "Maple Adze",
	inventory_image = "tools.maple_adze.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			diggable={times={[1]=tool_damage*2, [2]=tool_damage*4}, maxlevel=1},
			choppable={times={[1]=tool_damage*2, [2]=tool_damage*4}, maxlevel=2},
			sliceable={times={[1]=tool_damage/2, [2]=tool_damage}, maxlevel=1},
		},
		damage_groups = {fleshy=tool_damage},
	},
	visual_scale = 1.69,
})

minetest.register_tool("ks_tools:juniper_adze", {
	description = "Juniper Adze",
	inventory_image = "tools.juniper_adze.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			diggable={times={[1]=tool_damage*2, [2]=tool_damage*4}, maxlevel=1},
			choppable={times={[1]=tool_damage*2, [2]=tool_damage*4}, maxlevel=2},
			sliceable={times={[1]=tool_damage/2, [2]=tool_damage}, maxlevel=1},
		},
		damage_groups = {fleshy=tool_damage},
	},
	visual_scale = 1.69,
})