scoreboard players set <marco_shouted> variable 0

tag @s add source
execute as @a[predicate=pandamium:holding/filled_map,distance=..200] run function pandamium:detect/marco_polo/as_player
tag @s remove source

execute if score <marco_shouted> variable matches 1 run advancement revoke @s only pandamium:pandamium/misc/marco_polo/polo
execute if score <marco_shouted> variable matches 1 run advancement grant @s only pandamium:pandamium/misc/marco_polo/polo

advancement revoke @s only pandamium:detect/marco_polo
