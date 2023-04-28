execute if score @s item_clear matches 1.. run tellraw @s [{"text":"[Item Clear]","color":"dark_red"},{"text":" Confirm Item Clear ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to clear ","color":"dark_green"},{"text":"Simple Items","bold":true}," and ",{"text":"Arrows","bold":true}," now"]},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -2"}}," ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to clear ","color":"blue"},{"text":"Common Items","bold":true}," in 30 seconds"]},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -1"}}]

execute if score @s item_clear matches -1 run scoreboard players set <regular_item_clear_timer> global 31
execute if score @s item_clear matches -1 run tellraw @s [{"text":"[Item Clear]","color":"gold"},[{"text":" Clearing common items in ","color":"yellow"},{"text":"30 seconds","bold":true,"color":"gold"},"!"]]

execute if score @s item_clear matches -2 run function pandamium:misc/item_clear/clear_simple_items
execute if score @s item_clear matches -2 run tellraw @s [{"text":"[Item Clear]","color":"gold"},{"text":" Cleared simple items and arrows!","color":"yellow"}]

execute if score @s item_clear matches ..-3 run tellraw @s [{"text":"[Item Clear]","color":"gold"},{"text":" That is not a valid option!","color":"yellow"}]

scoreboard players reset @s item_clear
scoreboard players enable @s item_clear
