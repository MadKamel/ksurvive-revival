ks_sounds = {}

ks_sounds.generalnode_sounds = {}
ks_sounds.generalnode_sounds.footstep = {name = "generalnode_footstep", gain = 1.0}
ks_sounds.generalnode_sounds.dug = {name = "generalnode_dug", gain = 0.25}
ks_sounds.generalnode_sounds.dig = {name = "generalnode_dig", gain = 0.25}
ks_sounds.generalnode_sounds.place = {name = "generalnode_place", gain = 1.0}


ks_sounds.loggynode_sounds = {}
ks_sounds.loggynode_sounds.footstep = {name = "loggynode_footstep", gain = 1.0}
ks_sounds.loggynode_sounds.dug = {name = "loggynode_dug", gain = 0.25}
ks_sounds.loggynode_sounds.dig = {name = "loggynode_dig", gain = 0.25}
ks_sounds.loggynode_sounds.place = {name = "loggynode_place", gain = 1.0}


ks_sounds.leafynode_sounds = {}
ks_sounds.leafynode_sounds.footstep = {name = "leafynode_footstep", gain = 1.0}
ks_sounds.leafynode_sounds.dug = {name = "leafynode_dug", gain = 0.25}
ks_sounds.leafynode_sounds.dig = {name = "leafynode_dig", gain = 0.25}
ks_sounds.leafynode_sounds.place = {name = "leafynode_place", gain = 1.0}


ks_sounds.bedrocknode_sounds = {}
ks_sounds.bedrocknode_sounds.footstep = {name = "bedrocknode_footstep", gain = 1.0}
ks_sounds.bedrocknode_sounds.dug = {name = "bedrocknode_dug", gain = 0.25}
ks_sounds.bedrocknode_sounds.dig = {name = "bedrocknode_dig", gain = 0.25}
ks_sounds.bedrocknode_sounds.place = {name = "bedrocknode_place", gain = 1.0}


ks_sounds.snowynode_sounds = {}
ks_sounds.snowynode_sounds.footstep = {name = "snowynode_footstep", gain = 1.0}
ks_sounds.snowynode_sounds.dug = {name = "snowynode_dug", gain = 0.25}
ks_sounds.snowynode_sounds.dig = {name = "snowynode_dig", gain = 0.25}
ks_sounds.snowynode_sounds.place = {name = "snowynode_place", gain = 1.0}



minetest.register_on_joinplayer(function(player)
	minetest.sound_play({name = "underground_theme", gain = 1.0})
end)