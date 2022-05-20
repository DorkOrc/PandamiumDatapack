# run AT @s

scoreboard players set <returned> variable 0
execute store success score <returned> variable unless entity @s[gamemode=spectator] run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},{"text":" You can only run this trigger in spectator mode!","color":"red"}]

# Menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s switch_dimension matches 1.. run tellraw @s [{"text":"[Switch Dimension]","color":"gold"},{"text":" Choose dimension:\n ","color":"yellow"},{"text":"[The Nether]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"The Nether","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger switch_dimension set -1"}}," ",{"text":"[The Overworld]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"The Overworld","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger switch_dimension set -2"}}," ",{"text":"[The End]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"The End","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger switch_dimension set -3"}}]

# Teleport
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s switch_dimension matches -3..-1 run tellraw @s [{"text":"[Switch Dimension]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 in the_nether run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The Nether","color":"aqua"},"!"]]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 in overworld run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The Overworld","color":"aqua"},"!"]]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 in the_end run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 run tellraw @s [{"text":"[Switch Dimension]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"text":"The End","color":"aqua"},"!"]]

scoreboard players reset @s switch_dimension
scoreboard players enable @s switch_dimension
