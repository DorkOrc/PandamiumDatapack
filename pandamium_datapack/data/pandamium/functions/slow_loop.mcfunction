scoreboard players add <tick_counter> variable 5

execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a[scores={leave_count=1..}] run function pandamium:on_join

execute as @a run function pandamium:loop_triggers

execute as @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/spawn_effects
execute as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,type=#pandamium:hostile] run tp @s 0 -10 0

execute as @a[x=18,y=64,z=-10,distance=..2] run function pandamium:misc/random_teleport

function pandamium:misc/nether_spawn_prot
execute in minecraft:the_nether as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/nether_remove_mobs

kill @e[type=#pandamium:tnt]

execute as @a[scores={tpa_cooldown=1..}] run scoreboard players remove @s tpa_cooldown 5

execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 5

execute as @a[scores={deny_timer=1..}] run scoreboard players remove @s deny_timer 5


execute as @a if score @s jailed matches 1 unless entity @s[x=-6,y=57,z=-6,dx=12,dy=4,dz=12] run tp @s 3 57 0