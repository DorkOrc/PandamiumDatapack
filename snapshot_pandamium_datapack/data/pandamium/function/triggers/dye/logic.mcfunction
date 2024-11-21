execute unless predicate pandamium:player/can_enable_custom_dye run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Only Patreon supporters can choose a custom dye for leather armour! You can check out our ","extra":[{"text":"discord server","bold":true}," for more information on how to support us, or try to get into the top ten of a monthly leaderboard!"],"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}]

# menu
execute if score @s dye matches 1.. run return run function pandamium:triggers/dye/print_menu/main

# toggle off/on
execute if score @s dye matches -3..-1 run return run function pandamium:triggers/dye/toggle

# choose type
scoreboard players set <chosen_type> variable -100
scoreboard players operation <chosen_type> variable -= @s dye
execute if score <chosen_type> variable matches 1..3 run return run function pandamium:triggers/dye/change_type

# else
tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
