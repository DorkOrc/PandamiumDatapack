tp @e[type=minecraft:wither] 0 -1000 0

tp @a[nbt={Health:0f}] 0 1000 0

scoreboard players set Olexorus votes -1

execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a unless score @s leave_count matches 0 run function pandamium:on_join

execute as @a run function pandamium:check_triggers

execute as @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/spawn_effects
tp @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,type=#pandamium:hostile] 0 -1000 0

execute as @a[x=18,y=64,z=-10,distance=..2] run function pandamium:misc/random_teleport

function pandamium:misc/nether_spawn_prot
execute in minecraft:the_nether as @e[type=minecraft:ghast,x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run tp @s 0 -1000 0

execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 5

execute as @a[scores={tpa_cooldown=1..}] run scoreboard players remove @s tpa_cooldown 5
execute as @a[scores={tpa_request=1..}] run function pandamium:tpa/request_timer

execute as @a if score @s jailed matches 1.. unless data entity @s {Dimension:0} run tp @s 3 57 0
execute as @a if score @s jailed matches 1.. unless entity @s[x=-6,y=57,z=-6,dx=12,dy=4,dz=12] run tp @s 3 57 0
execute as @a[x=-6,y=57,z=-6,dx=12,dy=4,dz=12] unless score @s jailed matches 1.. unless score @s staff_perms matches 1.. run scoreboard players set @s spawn 1

execute as @e[type=item,x=-6,y=57,z=-6,dx=12,dy=4,dz=12] run tp 2.5 53 2.5

execute if score <sidebar_timer> variable matches 5.. as @a run scoreboard players operation @s playtime_hours = @s playtime_ticks
execute if score <sidebar_timer> variable matches 5.. run scoreboard players operation @a playtime_hours /= <playtime> variable

execute if score <sidebar_timer> variable matches 5.. run scoreboard players remove <sidebar_timer> variable 5
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard objectives setdisplay sidebar sidebar
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard players set <sidebar> variable 0

function pandamium:misc/auto_item_timer

schedule function pandamium:main_loop 5t
