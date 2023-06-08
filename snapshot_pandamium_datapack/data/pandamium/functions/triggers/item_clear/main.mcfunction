scoreboard players set <returned> variable 0

execute if score @s item_clear matches 1 store success score <returned> variable run tellraw @s [{"text":"[Item Clear]","color":"dark_red"},{"text":" Confirm Item Clear ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to clear ","color":"dark_green"},{"text":"Simple Items","bold":true}," and ",{"text":"Arrows","bold":true}," now"]},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -2"}}," ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to clear ","color":"blue"},{"text":"Common Items","bold":true}," in 30 seconds"]},"clickEvent":{"action":"run_command","value":"/trigger item_clear set -1"}}]

execute if score @s item_clear matches -1 run scoreboard players set <regular_item_clear_timer> global 31
execute if score @s item_clear matches -1 store success score <returned> variable run tellraw @s [{"text":"[Item Clear]","color":"dark_green"},[{"text":" Clearing common items in ","color":"green"},{"text":"30 seconds","color":"aqua"},"!"]]

execute if score @s item_clear matches -2 run function pandamium:misc/item_clear/clear_simple_items
execute if score @s item_clear matches -2 store success score <returned> variable run tellraw @s [{"text":"[Item Clear]","color":"dark_green"},{"text":" Cleared simple items and arrows!","color":"green"}]

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Item Clear]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s item_clear
scoreboard players enable @s item_clear
