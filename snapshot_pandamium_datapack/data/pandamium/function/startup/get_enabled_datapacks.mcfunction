data modify storage pandamium:global enabled_datapacks set value []
execute in pandamium:staff_world run data modify storage pandamium:global enabled_datapacks append from block 6 1 0 LastOutput.extra[0].with[1].extra[].insertion

execute store result score <fabric_enabled> global if data storage pandamium:global {enabled_datapacks:["fabric"]}

execute if score <fabric_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 0

#scoreboard players set <carpet_enabled> global 0
#execute store success score <carpet_enabled> global run function pandamium:startup/check_carpet_enabled

#execute if score <carpet_enabled> global matches 0 run scoreboard players set <server_optn.carpet_mod_enabled> global 0
#execute if score <carpet_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 0

#execute if score <carpet_enabled> global matches 1 run scoreboard players set <server_optn.carpet_mod_enabled> global 1
#execute if score <carpet_enabled> global matches 1 run scoreboard players set <disable_tnt_auto_defuse> global 1
