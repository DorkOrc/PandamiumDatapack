# If negative, switch to spectator mode
execute if score @s spawn matches ..-1 run gamemode spectator @s[scores={staff_perms=1..}]
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= #-1 constant

#

execute unless score @s spawn matches 2..3 run function pandamium:misc/warp/spawn
execute if score @s spawn matches 2 run function pandamium:misc/warp/nether_spawn
execute if score @s spawn matches 3 run function pandamium:misc/warp/end_platform
execute if score @s spawn matches 101 in overworld run tp @s -44 144 -102 -180 0

scoreboard players reset @s spawn
scoreboard players enable @s spawn
