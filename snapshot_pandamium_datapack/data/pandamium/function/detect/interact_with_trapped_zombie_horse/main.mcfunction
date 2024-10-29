execute as @e[type=zombie_horse,distance=..10,tag=pandamium.trapped] at @s run function pandamium:detect/interact_with_trapped_zombie_horse/as_trapped_zombie_horse

advancement revoke @s only pandamium:detect/interact_with_trapped_zombie_horse
