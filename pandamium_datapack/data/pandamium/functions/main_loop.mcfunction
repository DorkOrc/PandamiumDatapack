op Olexorus
op jamieamie
op Sundroid

scoreboard players set Olexorus votes -1

execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a[scores={leave_count=1..}] run function pandamium:on_join

execute as @a run function pandamium:check_triggers

execute as @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/spawn_effects
execute as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,type=#pandamium:hostile] run function pandamium:misc/kill_without_drops

execute as @a[x=18,y=64,z=-10,distance=..2] run function pandamium:misc/random_teleport

function pandamium:misc/nether_spawn_prot
execute in minecraft:the_nether as @e[type=minecraft:ghast,x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/kill_without_drops

execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 5

execute as @a[scores={tpa_cooldown=1..}] run scoreboard players remove @s tpa_cooldown 5
execute as @a[scores={tpa_request=1..}] run function pandamium:tpa/request_timer

execute as @a if score @s jailed matches 1.. unless entity @s[x=-6,y=57,z=-6,dx=12,dy=4,dz=12] run tp @s 3 57 0

execute as @a run function pandamium:misc/create_particles

schedule function pandamium:main_loop 5t
