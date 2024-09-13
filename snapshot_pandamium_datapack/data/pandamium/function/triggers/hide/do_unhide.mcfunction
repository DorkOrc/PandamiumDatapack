function pandamium:misc/warp/pre_hide_pos

execute if score @s hidden matches 1 run gamemode survival
execute if score @s hidden matches 2 run gamemode spectator
execute if score @s hidden matches 3 run gamemode creative
effect clear @s invisibility

execute unless score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible!","color":"yellow"}]
execute if score @s hidden matches 2 run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are no longer invisible! Put you back into spectator mode.","color":"yellow"}]
title @s actionbar ""

scoreboard players reset @s hidden

function pandamium:player/teams/enable_collision
function pandamium:player/update_tablist_value

# diguise (fun)
execute if entity @s[name="DorkOrc"] as 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 run function pandamium:utils/kill
