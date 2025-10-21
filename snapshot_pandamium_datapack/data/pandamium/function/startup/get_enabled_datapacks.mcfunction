data modify storage pandamium:global enabled_datapacks set value []
execute in pandamium:staff_world run data modify storage pandamium:global enabled_datapacks append from block 6 1 0 LastOutput.extra[0].with[1].extra[].insertion

execute store result score <fabric_enabled> global if data storage pandamium:global {enabled_datapacks:["fabric"]}

#execute if score <fabric_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 0
