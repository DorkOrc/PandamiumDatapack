scoreboard players reset @s detect.aviate
scoreboard players reset @s detect.used.ender_pearl

execute store success score <in_parkour> variable if score @s parkour.checkpoint matches 0..

execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 0..99 run function pandamium:misc/parkour/parkour_1/tp_to_start
execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 0..99 run tp @s
execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 0..99 run function pandamium:misc/parkour/actions/cancel/cheating

execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 100..199 if entity @s[gamemode=adventure] run tellraw @s [{"text":"[Parkour] ","color":"dark_red"},{"text":"Returned your to the beginning of the room! Cheating was detected.","color":"red"}]
execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 100..199 if entity @s[gamemode=adventure] run function pandamium:misc/parkour/actions/return_to_last_checkpoint
execute if score <in_parkour> variable matches 1 if score @s parkour.checkpoint matches 100..199 unless entity @s[gamemode=adventure] run function pandamium:misc/parkour/actions/cancel/cheating

execute if score <in_parkour> variable matches 1 run data modify storage pandamium:temp UUID set from entity @s UUID
execute if score <in_parkour> variable matches 1 as @e[type=ender_pearl,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/parkour/kill_ender_pearl

execute if score <in_parkour> variable matches 1 at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0

advancement revoke @s only pandamium:detect/parkour/cheat
