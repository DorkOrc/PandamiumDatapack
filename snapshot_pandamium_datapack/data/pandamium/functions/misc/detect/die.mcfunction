execute if score @s death_particles matches 1.. if entity @s[gamemode=!spectator] unless score @s hidden matches 1.. at @s if entity @a[distance=..64,limit=1] run function pandamium:misc/particles/death_event
execute if score @s disable_keep_inventory matches 1 if entity @s[predicate=!pandamium:in_dimension/staff_world,predicate=!pandamium:in_spawn,gamemode=survival] run function pandamium:misc/drop_inventory/main

scoreboard players reset @s detect.die
