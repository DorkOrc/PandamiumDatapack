execute in pandamium:staff_world run summon minecart 0. 0 0. {Tags:["check_can_teleport"]}
execute positioned as @s in pandamium:staff_world as @e[type=minecart,tag=check_can_teleport,x=0,y=0,z=0,distance=0] run function pandamium:misc/teleport/check_can_teleport

execute if score <can_teleport> variable matches 0 run tellraw @s {"text":"Invalid coordinates!","color":"red"}
execute if score <can_teleport> variable matches 1 run function pandamium:misc/teleport/teleport
