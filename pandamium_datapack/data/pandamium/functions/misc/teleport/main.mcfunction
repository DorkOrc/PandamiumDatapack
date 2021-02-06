#instead of "tp @s ~ ~ ~ ~ ~",
#use "function pandamium:misc/teleport/main"

execute in pandamium:staff_world run summon minecart 0. 0 0. {Tags:["check_can_teleport"]}
execute as @e[type=minecart,tag=check_can_teleport] run function pandamium:misc/teleport/check_can_teleport

execute if score <can_teleport> variable matches 0 run tellraw @s {"text":"Invalid coordinates!","color":"red"}
execute if score <can_teleport> variable matches 1 run function pandamium:misc/teleport/teleport
