scoreboard players reset @s[predicate=pandamium:in_spawn] detect.die
execute in pandamium:staff_world run scoreboard players reset @a[x=0] detect.die

execute if score @s death_particles matches 1.. unless score @s hidden matches 1.. at @s if entity @a[distance=..64] run function pandamium:misc/particles/death_event
execute if score @s disable_keep_inventory matches 1 if entity @s[gamemode=survival] in pandamium:staff_world if blocks 0 0 0 0 0 0 0 0 0 all run function pandamium:misc/drop_inventory_items

scoreboard players reset @s detect.die
