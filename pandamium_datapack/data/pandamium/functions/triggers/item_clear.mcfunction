execute if score @s item_clear matches 1.. run tellraw @a [{"text":"[Item Clear]","color":"dark_red"},{"text":" Confirm Item Clear ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Clear Simple Items Now","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -2"}}," ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Clear Common Items in 30 Seconds","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -1"}}]

execute if score @s item_clear matches -1 run scoreboard players set <auto_clear> variable 605
execute if score @s item_clear matches -1 run tellraw @s [{"text":"[Item Clear]","color":"gold"},[{"text":" Clearing common items in ","color":"yellow"},{"text":"30 seconds","bold":true,"color":"gold"},"!"]]

execute if score @s item_clear matches -2 run function pandamium:misc/clear_simple_items
execute if score @s item_clear matches -2 run tellraw @s [{"text":"[Item Clear]","color":"gold"},{"text":" Cleared simple items and arrows!","color":"yellow"}]

scoreboard players reset @s item_clear
scoreboard players enable @s item_clear
