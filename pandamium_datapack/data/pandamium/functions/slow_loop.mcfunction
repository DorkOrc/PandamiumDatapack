execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a[scores={leave_count=1..}] run function pandamium:on_join

execute as @a run function pandamium:loop_triggers

execute as @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:spawn_effects
execute as @e[x=-128,y=0,z=-128,dx=256,dy=256,dz=256] run function pandamium:spawn_remove_mobs

kill @e[type=minecraft:tnt]

execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 5

execute as @a if score @s jailed matches 1 unless entity @s[x=-6,y=57,z=-6,dx=12,dy=4,dz=12] run tp @s 3 57 0