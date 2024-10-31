execute in pandamium:staff_world run data modify storage pandamium:text input set from block 6 1 0 LastOutput
function pandamium:utils/text/get_compound

data modify storage pandamium:global enabled_datapacks set value []
data modify storage pandamium:global enabled_datapacks append from storage pandamium:text compound.extra[0].with[1].extra[].insertion

execute store result score <fabric_enabled> global if data storage pandamium:global {enabled_datapacks:["fabric"]}

execute if score <fabric_enabled> global matches 0 run scoreboard players set <server_optn.carpet_mod_enabled> global 0
execute if score <fabric_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 1
