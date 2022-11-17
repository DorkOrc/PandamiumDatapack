execute store result score <display_checkpoint> variable run scoreboard players operation @s parkour.checkpoint = <my_next_checkpoint> variable
scoreboard players operation <display_checkpoint> variable %= #100 constant

execute if score @s parkour.checkpoint matches 100..199 run scoreboard players add <display_checkpoint> variable 1
execute if score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Reached ","color":"dark_aqua"},[{"text":"Room ","bold":true,"color":"aqua"},{"score":{"name":"<display_checkpoint>","objective":"variable"}}],"!"]]

execute unless score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Reached ","color":"dark_aqua"},[{"text":"Checkpoint ","bold":true,"color":"aqua"},{"score":{"name":"<display_checkpoint>","objective":"variable"}}],"!"]]

# Prompt to unequip armour in cactus room
execute if data storage pandamium:temp parkour.node.data{unequip_armour:1b} run function pandamium:misc/parkour/actions/unequip_armour

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
