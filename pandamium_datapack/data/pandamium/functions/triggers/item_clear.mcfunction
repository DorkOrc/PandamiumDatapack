execute if score @s item_clear matches 1 run function pandamium:misc/clear_simple_items
execute if score @s item_clear matches 1 run tellraw @s [{"text":"[Info]","color":"gold"},{"text":" Cleared common items!","color":"yellow"}]

execute if score @s item_clear matches 2.. run scoreboard players set <auto_clear> variable 605
execute if score @s item_clear matches 2.. run tellraw @s [{"text":"[Info]","color":"gold"},[{"text":" Clearing common items in ","color":"yellow"},{"text":"30 seconds","bold":true,"color":"gold"},"!"]]

scoreboard players reset @s item_clear
scoreboard players enable @s item_clear
