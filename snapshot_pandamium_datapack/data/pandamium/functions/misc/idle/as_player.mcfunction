execute store result score <r0> variable run data get storage pandamium:temp idle.rotation[0]
execute store result score <r1> variable run data get storage pandamium:temp idle.rotation[1]

scoreboard players set <moved> variable 1
execute if score @s idle.last_r0 = <r0> variable if score @s idle.last_r1 = <r1> variable run scoreboard players set <moved> variable 0
execute if score <moved> variable matches 1 unless score @s idle.time matches 1073741824..1073741864 run function pandamium:misc/idle/moved

scoreboard players operation @s idle.last_r0 = <r0> variable
scoreboard players operation @s idle.last_r1 = <r1> variable
