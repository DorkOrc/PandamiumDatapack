# If negative, switch to spectator mode
execute if score @s spawn matches ..-1 run gamemode spectator @s[scores={staff_perms=1..}]
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= #-1 constant

#
execute if score @s spawn matches 1 run function pandamium:misc/warp/spawn
execute if score @s spawn matches 2 run function pandamium:misc/warp/nether_spawn
execute if score @s spawn matches 3 run function pandamium:misc/warp/end_platform
execute if score @s spawn matches 101 in overworld positioned -330.0 127.0 162.5 rotated -254 2 run function pandamium:utils/teleport/here/from_source {source:"warp jail_area"}
execute if score @s spawn matches 102 in overworld positioned -269.0 139.0 120.5 rotated 90 -12 run function pandamium:utils/teleport/here/from_source {source:"warp leader_boards_area"}

scoreboard players reset @s spawn
scoreboard players enable @s spawn
