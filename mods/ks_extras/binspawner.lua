local max_generated_items = 25
local bin_column = 1
local bin_row = 8

local bin_debug = false


-- { item_name, position_in_inventory }
local bin_items = {
	"ks_tools:dolomite_rock "..math.random(max_generated_items),
	"ks_tools:dolomite_sharpened_rock "..math.random(max_generated_items),
	"ks_tools:aragonite_rock "..math.random(max_generated_items),
	"ks_tools:aragonite_sharpened_rock "..math.random(max_generated_items),
	"ks_tools:holly_stick "..math.random(max_generated_items),
	"ks_tools:holly_adze",
	"ks_tools:juniper_stick "..math.random(max_generated_items),
	"ks_tools:juniper_adze",
	"ks_tools:douglasfir_stick "..math.random(max_generated_items),
	"ks_tools:douglasfir_adze",
	"ks_glass:annealed_glass "..math.random(max_generated_items),
	"ks_flora:bahia_0 "..math.random(max_generated_items*3),
	"ks_flora:juncus_0 "..math.random(max_generated_items*3)
}


local bin_types = {
	"ks_decor:douglasfir_bin",
	"ks_decor:holly_bin",
	"ks_decor:juniper_bin"
}

local bin_names = {
	"Douglas Fir-Wood Bin",
	"Holly-Wood Bin",
	"Juniper-Wood Bin"
}


local function choose_bin(options)
	local result
	for i, item in ipairs(options) do
		result = options[math.random(#options)]
	end
	return result
end


local function choose_items(options, chance)
	local result = {}
	for i, item in ipairs(options) do
		if math.random(chance) == 1 then
			table.insert(result, item) --add item
		end
	end
	if bin_debug then
		minetest.log("chat", "Items chosen.")
	end
	for i = 1, #result do
		if bin_debug then
			minetest.log("chat", "Items chosen include :"..result[i])
		end
	end
	return result
end	


local function on_construct(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	--meta:set_string("infotext", "Dungeon Bin")
	local fs_content = "size[8,7;]" ..
		"list[context;container;0,0.3;10,1;]" ..
		"list[current_player;main;0,2.85;8,1;]" ..
		"list[current_player;main;0,4.08;8,3;8]" ..
		"listring[context;container]"
	meta:set_string("formspec", fs_content)
end


local function rename_bin(pos, name)
	local meta = minetest.get_meta(pos)
	local index={} -- took this snippet from StackOverflow. I needed this to find an index, because Lua can't do this by default. I miss Python...
	for k,v in pairs(bin_types) do
		index[v]=k
	end
	meta:set_string("infotext", bin_names[index[name]]) -- This sets the name of the bin. Old code for this was at line 72.
	-- This may or may not work. I hope that this will, because this is annoying me.
end


local function insert_items(pos, listname, items)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	inv:set_size("container", bin_column*bin_row)
	for i = 1, #items do
		inv:add_item("container", items[i])
		if bin_debug then
			minetest.log("chat", "Inserted item :"..items[i])
		end
	end
	local chosen_bin = choose_bin(bin_types)
	if bin_debug then
		minetest.log("chat", chosen_bin)
	end
	minetest.swap_node(pos, {name=chosen_bin})
	rename_bin(pos, chosen_bin) --Hope this works.
	on_construct(pos)
end


minetest.register_abm({
	label = "Generate bins from spawners",
	name = "ks_extras:bin_spawning",
	nodenames = "ks_extras:bin_spawner",
	interval = 0.5,
	chance = 1,
	action = function(pos, node)
		insert_items(pos, "container", choose_items(bin_items, 4))
		if bin_debug then
			minetest.log("chat", "Bin spawned at X:"..pos.x.."Y: "..pos.y.." Z:"..pos.z)
		end
	end
})
