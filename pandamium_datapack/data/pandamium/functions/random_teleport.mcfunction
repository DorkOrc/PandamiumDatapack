execute as @a[x=18,y=64,z=-10,distance=..2] run scoreboard players set @s random_teleport 1

spreadplayers 0 0 0 25000 false @a[scores={random_teleport=1}]

scoreboard players add @a[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000,scores={random_teleport=1}] random_teleport 1
scoreboard players remove @a[scores={random_teleport=1..}] random_teleport 1