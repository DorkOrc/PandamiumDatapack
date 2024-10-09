execute store result score <display_checkpoint> variable run scoreboard players operation @s parkour.checkpoint = <my_next_checkpoint> variable
scoreboard players operation <display_checkpoint> variable %= #100 constant

tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Reached ","color":"dark_aqua"},[{"text":"Checkpoint ","bold":true,"color":"aqua"},{"score":{"name":"<display_checkpoint>","objective":"variable"}}],"!"]]

# Prompt to unequip armour in cactus room
execute if data storage pandamium:temp parkour.node.data{unequip_armour:1b} run function pandamium:impl/parkour/actions/unequip_armour

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute at @s run particle totem_of_undying ~ ~1.5 ~ 0 0 0 1 10

execute if score @s parkour.checkpoint matches 301..399 at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 2
