execute if entity @s[gamemode=!spectator] if score @s detect.die matches 1.. if score @s death_particles matches 1.. unless score @s hidden matches 1.. at @s if entity @a[distance=..64,limit=1] run function pandamium:misc/particles/death_event
execute if entity @s[predicate=!pandamium:in_dimension/staff_world,predicate=!pandamium:in_spawn,gamemode=survival] if score @s detect.die matches 1.. if score @s disable_keep_inventory matches 1 in pandamium:staff_world if blocks 0 0 0 0 0 0 0 0 0 all run function pandamium:misc/drop_inventory_items

scoreboard players reset @s detect.die
