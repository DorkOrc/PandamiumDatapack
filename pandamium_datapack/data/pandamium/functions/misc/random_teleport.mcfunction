spreadplayers 0 0 0 25000 false @s

execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score @s temp_1 run data get entity @s Pos[0]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score @s temp_2 run data get entity @s Pos[1]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score @s temp_3 run data get entity @s Pos[2]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run tellraw @s [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_2"}}," ",{"score":{"name":"@s","objective":"temp_3"}}],"!"]

execute if entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run function pandamium:random_teleport
