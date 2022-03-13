function pandamium:misc/teleport/pre_hide_pos

execute if score @s hidden matches 1 run gamemode survival
execute if score @s hidden matches 2 run gamemode spectator
effect clear @s invisibility

execute if score @s hidden matches 1 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]
execute if score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible! Put you back into spectator mode.","color":"yellow"}]
title @s actionbar ""

scoreboard players reset @s hidden
