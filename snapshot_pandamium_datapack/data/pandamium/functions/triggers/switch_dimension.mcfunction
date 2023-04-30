# run AT @s

scoreboard players set <returned> variable 0
execute unless entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},{"text":" You can only run this trigger in spectator mode!","color":"red"}]

# Menu
execute if score <returned> variable matches 0 if score @s switch_dimension matches 1.. store success score <returned> variable run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Dimensions","bold":true}," ========\n",[{"text":" ","color":"green"},{"text":"[The Nether]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"The Nether","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger switch_dimension set -1"}},"  |  ",{"text":"[Overworld]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"The Overworld","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger switch_dimension set -2"}},"  |  ",{"text":"[The End]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"The End","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger switch_dimension set -3"}}],"\n============================"]

# Teleport
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if predicate pandamium:in_dimension/the_nether store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},[{"text":" You are already in ","color":"red"},{"text":"The Nether","bold":true},"!"]]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if predicate pandamium:in_dimension/overworld run function pandamium:impl/triggers/switch_dimension/to_the_nether_from_overworld
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 unless predicate pandamium:in_dimension/overworld in the_nether run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The Nether","color":"aqua"},"!"]]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if predicate pandamium:in_dimension/overworld store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},[{"text":" You are already in ","color":"red"},{"text":"The Overworld","bold":true},"!"]]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if predicate pandamium:in_dimension/the_nether run function pandamium:impl/triggers/switch_dimension/to_overworld_from_the_nether
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 unless predicate pandamium:in_dimension/the_nether in overworld run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The Overworld","color":"aqua"},"!"]]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 if predicate pandamium:in_dimension/the_end store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},[{"text":" You are already in ","color":"red"},{"text":"The End","bold":true},"!"]]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 in the_end run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 store success score <returned> variable run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The End","color":"aqua"},"!"]]

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s switch_dimension
scoreboard players enable @s switch_dimension
