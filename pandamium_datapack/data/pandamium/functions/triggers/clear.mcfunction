execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" You cannot use that trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score @s clear matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Clear]","color":"dark_red"}," Are you sure you want to ",{"text":"permanently delete all items","underlined":true}," from your inventory? ",{"text":"[✔]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger clear set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"permanently delete all items","bold":true}," from your inventory"]}}]

execute unless score @s jailed matches 1.. if score @s clear matches -101 run clear @s
execute unless score @s jailed matches 1.. if score @s clear matches -101 run tellraw @s [{"text":"[Clear]","color":"dark_green"},{"text":" Cleared everything in your inventory!","color":"green"}]

scoreboard players reset @s clear
scoreboard players enable @s clear
