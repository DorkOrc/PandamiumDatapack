function pandamium:misc/warp/pre_hide_pos

execute if score @s hidden matches 1 run gamemode survival
execute if score @s hidden matches 2 run gamemode spectator
execute if score @s hidden matches 3 run gamemode creative
effect clear @s invisibility

execute unless score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]
execute if score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible! Put you back into spectator mode.","color":"yellow"}]
title @s actionbar ""

scoreboard players reset @s hidden

function pandamium:player/ranks/update_team
