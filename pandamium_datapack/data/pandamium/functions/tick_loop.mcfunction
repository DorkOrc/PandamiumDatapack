scoreboard players reset @a[x=-512,y=-64,z=-512,dx=1024,dy=320,dz=1024] detect.death
execute in pandamium:staff_world run scoreboard players reset @a[x=0] detect.death
execute as @a[scores={detect.death=1..,death_particles=1..}] at @s if entity @e[type=player,distance=..64] run function pandamium:misc/particles/death_event
execute as @a[scores={detect.death=1..,disable_keep_inv=1}] in pandamium:staff_world if blocks 0 0 0 0 0 0 0 0 0 all run function pandamium:misc/drop_inventory_items
scoreboard players reset * detect.death

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1 at @s run function pandamium:misc/particles/tick_as_player
