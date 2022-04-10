# Instead of "tp @s ~ ~ ~ ~ ~",
# use "function pandamium:misc/teleport/main"

execute in pandamium:staff_world run summon area_effect_cloud 0. 0 0. {Tags:["check_can_teleport"]}
execute as @e[type=area_effect_cloud,tag=check_can_teleport] store success score <can_teleport> variable run tp ~ ~ ~

execute if score <can_teleport> variable matches 0 run tellraw @s [{"text":"[Teleport] ","color":"dark_red"},{"text":" Invalid coordinates!","color":"red"}]
execute if score <can_teleport> variable matches 1 run spectate
execute if score <can_teleport> variable matches 1 run function pandamium:misc/teleport/teleport
