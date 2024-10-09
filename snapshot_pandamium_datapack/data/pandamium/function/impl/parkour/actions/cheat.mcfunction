# Kill thrown ender pearls
execute if score @s detect.use.ender_pearl matches 1.. run tag @s add thrower
execute if score @s detect.use.ender_pearl matches 1.. at @s as @e[type=ender_pearl,distance=..10] run function pandamium:impl/parkour/kill_ender_pearl
execute if score @s detect.use.ender_pearl matches 1.. run tag @s remove thrower

execute store result score <course> variable run scoreboard players get @s parkour.checkpoint
scoreboard players operation <course> variable /= #100 constant
scoreboard players add <course> variable 1

execute if data storage pandamium:temp cheat_data{type:"teleport"} run function pandamium:impl/parkour/actions/cancel/teleporting
execute unless data storage pandamium:temp cheat_data{type:"teleport"} if score <course> variable matches 3..4 run function pandamium:impl/parkour/actions/cancel/cheating

# parkour_3
execute if score <course> variable matches 3 if data storage pandamium:temp cheat_data{return_to_start:1b} run function pandamium:impl/parkour/parkour_3/tp_to_start_without_feedback

# parkour_4
execute if score <course> variable matches 4 if data storage pandamium:temp cheat_data{return_to_start:1b} in overworld positioned -300.5 136 197.0 rotated 0 0 run function pandamium:utils/teleport/here

# Resets velocity
execute if data storage pandamium:temp cheat_data{return_to_start:1b} run tp @s

execute at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0
