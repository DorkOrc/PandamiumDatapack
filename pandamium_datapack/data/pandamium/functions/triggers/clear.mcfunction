
execute if score @s clear matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Clear]","color":"dark_red"}," Are you sure you want to clear ",{"text":"all items","underlined":true}," from your inventory? ",{"text":"[✔]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger clear set -1"},"hoverEvent":{"action":"show_text","value":{"text":"Clear Inventory","color":"dark_red"}}}]

execute if score @s clear matches -1 run clear @s
execute if score @s clear matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Clear]","color":"dark_green"}," Cleared everything in your inventory!"]

scoreboard players reset @s clear
scoreboard players enable @s clear
