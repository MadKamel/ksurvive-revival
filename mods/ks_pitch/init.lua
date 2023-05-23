local pitch_viscosity = 10
local pitch_range = 1

minetest.register_node("ks_pitch:hard_pitch", {
	description = "Hardened Pitch",
	tiles = {"pitch.pitch.png"},
	groups = {pitch = 1}
})

minetest.register_node("ks_pitch:pitch_source", {
	description = "Source Pitch",
	drawtype = "liquid",
	tiles = {
		{
			name = "pitch.pitch.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
		{
			name = "pitch.pitch.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
	},
	use_texture_alpha = "blend",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "ks_pitch:pitch_flowing",
	liquid_alternative_source = "ks_pitch:pitch_source",
	liquid_viscosity = pitch_viscosity,
	liquid_range = pitch_range,
	groups = {pitch = 1, liquid = 3}
})

minetest.register_node("ks_pitch:pitch_flowing", {
	description = "Flowing Pitch",
	drawtype = "flowingliquid",
	tiles = {"pitch.pitch.png"},
	special_tiles = {
		{
			name = "pitch.pitch.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
		{
			name = "pitch.pitch.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 8,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ks_pitch:pitch_flowing",
	liquid_alternative_source = "ks_pitch:pitch_source",
	liquid_viscosity = pitch_viscosity,
	liquid_range = pitch_range,
	groups = {pitch = 1, liquid = 3}
})