execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a[distance=..16]
function pandamium:misc/warp/spawn
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a[distance=..16]
execute at @s run particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0 100

advancement revoke @s only pandamium:detect/consume_mini_chorus_fruit
