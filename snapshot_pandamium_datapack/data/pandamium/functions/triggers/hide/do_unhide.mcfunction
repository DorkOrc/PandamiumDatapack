function pandamium:misc/warp/pre_hide_pos

execute if score @s hidden matches 1 run gamemode survival
execute if score @s hidden matches 2 run gamemode spectator
execute if score @s hidden matches 3 run gamemode creative
effect clear @s invisibility

team join srmod @s[scores={staff_rank=3}]
team join admin @s[scores={staff_rank=4}]
team join owner @s[scores={staff_rank=5}]

execute unless score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]
execute if score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible! Put you back into spectator mode.","color":"yellow"}]
title @s actionbar ""

scoreboard players reset @s hidden
