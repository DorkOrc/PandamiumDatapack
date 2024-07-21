scoreboard players set <valid_option> variable 0
execute if score @s options matches -18..-1 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -1002..-1001 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -102..-101 if score @s gameplay_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -201..-201 if entity @s[scores={supporter_rank=1,staff_perms=0},team=!vip] run scoreboard players set <valid_option> variable 1
execute if score @s options matches -304..-301 if score @s staff_perms matches 1.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -403..-401 if score @s staff_perms matches 2.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -503..-501 if score @s staff_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -601 if score @s staff_perms matches 1.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -604..-602 if score @s staff_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -10001..-10001 if score @s donator_migration_notice matches 1 run scoreboard players set <valid_option> variable 1

execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Confirmation Messages
execute if score @s options matches -1001 if score @s disable_keep_inventory matches 1 run scoreboard players set @s options -2
execute if score @s options matches -1001 run tellraw @s [{"text":"[Options]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},[{"text":"disable ","underlined":true},{"text":"Keep-Inventory","bold":true}],"? Doing that will cause you to drop all of your items onto the ground when you die. "],{"text":"[✔]","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_green"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]
execute if score @s options matches -1002 if score @s hide_coordinates matches 1 run scoreboard players set @s options -8
execute if score @s options matches -1002 run tellraw @s [{"text":"[Options]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},[{"text":"enable ","underlined":true},{"text":"Hide Coordinates","bold":true}],"? You should only use this option if you are recording or streaming and do not want others to see your position. "],{"text":"[✔]","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_green"},{"text":"Hide Coordinates","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -8"}}]

execute if score @s options matches -999..-1 run function pandamium:triggers/options/do_change
execute if score @s options matches -10001..-10001 run function pandamium:triggers/options/do_change
