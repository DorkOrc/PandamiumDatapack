scoreboard players set <temp_1> variable 1
execute if entity @s[gamemode=survival] run scoreboard players set <temp_1> variable 0

execute if score <temp_1> variable matches 1 run gamemode spectator @s
execute if score <temp_1> variable matches 0 run gamemode survival @s

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
