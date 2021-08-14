kill @e[type=marker,tag=sign.raycast]

summon marker ~ ~ ~ {Tags:["sign.raycast"]}
execute at @s anchored eyes run tp @e[type=marker,tag=sign.raycast,limit=1] ^ ^ ^ ~ ~

scoreboard players set <raycast_iters> variable 0
scoreboard players set <in_sign> variable 0
execute as @e[type=marker,tag=sign.raycast,limit=1] at @s run function pandamium:misc/sign/raycast
