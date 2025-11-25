execute in pandamium:staff_world store success score <server_optn.carpet_mod_enabled> global if block 0 -60 0 minecraft:glass

# If Carpet mod is disabled, auto defuse explosive things and turn mob griefing off
execute if score <server_optn.carpet_mod_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 0
execute if score <server_optn.carpet_mod_enabled> global matches 0 run gamerule mob_griefing false

# If Carpet mod is enabled, allow normal explosive damage behaviour
execute if score <server_optn.carpet_mod_enabled> global matches 1 run scoreboard players set <disable_tnt_auto_defuse> global 1
execute if score <server_optn.carpet_mod_enabled> global matches 1 run gamerule mob_griefing true
