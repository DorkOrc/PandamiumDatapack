scoreboard players set <valid_option> variable 0
execute if score @s options matches -7..-1 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -1002..-1002 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -101..-101 if score @s gameplay_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -201..-201 if entity @s[scores={donator_rank=1,staff_perms=0},team=!vip] run scoreboard players set <valid_option> variable 1
execute if score @s options matches -301..-301 if score @s staff_perms matches 1.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -403..-401 if score @s staff_perms matches 2.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -503..-501 if score @s staff_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Confirmation Messages
execute if score @s options matches -1002 if score @s disable_keep_inventory matches 1 run scoreboard players set @s options -2
execute if score @s options matches -1002 run tellraw @s [{"text":"[Options]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},[{"text":"disable ","underlined":true},{"text":"Keep-Inventory","bold":true}],"? Doing that will cause you to drop all of your items onto the ground when you die. "],{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_green"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]

execute if score <valid_option> variable matches 1 if score @s options matches -999..-1 run function pandamium:impl/triggers/options/do_change
