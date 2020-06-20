execute at @s if score @s clear_items matches 1.. run function pandamium:misc/clear_simple_items
execute at @s if score @s clear_items matches 1.. run tellraw @s [{"text":"Common items cleared.","color":"gray","italic":"true"}]

execute at @s if score @s clear_items matches ..1 run scoreboard players set <auto_clear> variable 605

scoreboard players reset @s clear_items
scoreboard players enable @s clear_items
