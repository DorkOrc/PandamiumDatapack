execute if score @s clear_items matches 1.. run function pandamium:misc/clear_simple_items
execute if score @s clear_items matches 1.. run tellraw @s [{"text":"[Info]","color":"gold"},{"text":" Cleared common items!","color":"yellow"}]

execute if score @s clear_items matches ..-1 run scoreboard players set <auto_clear> variable 605
execute if score @s clear_items matches ..-1 run tellraw @s [{"text":"[Info]","color":"gold"},[{"text":" Clearing common items in ","color":"yellow"},{"text":"30 seconds","bold":true,"color":"gold"},"!"]]

scoreboard players reset @s clear_items
scoreboard players enable @s clear_items
