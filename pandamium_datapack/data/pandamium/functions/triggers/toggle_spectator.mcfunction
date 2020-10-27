scoreboard players set <temp_1> variable 1
execute if entity @s[gamemode=survival] run scoreboard players set <temp_1> variable 0

execute if entity @s[scores={staff_perms=1},x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run scoreboard players set <temp_1> variable 0
execute if entity @s[scores={staff_perms=1},x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," Helpers can only use this trigger at spawn."]

execute if score <temp_1> variable matches 1 run gamemode spectator @s
execute if score <temp_1> variable matches 0 run gamemode survival @s

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
