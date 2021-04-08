execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score @s clear matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Clear]","color":"dark_red"}," Are you sure you want to clear ",{"text":"all items","underlined":true}," from your inventory? ",{"text":"[✔]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger clear set -100"},"hoverEvent":{"action":"show_text","value":{"text":"Clear Inventory","color":"dark_green"}}}]
execute unless score @s jailed matches 1.. if score @s clear matches -100 run clear @s
execute unless score @s jailed matches 1.. if score @s clear matches -100 run tellraw @s [{"text":"[Clear]","color":"dark_green"},{"text":" Cleared everything in your inventory!","color":"green"}]

scoreboard players reset @s clear
scoreboard players enable @s clear
