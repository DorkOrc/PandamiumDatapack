tp @e[type=wither] 0 -1000 0

# @a selects all players, @e[type=player] only alive ones
scoreboard players set @a alive 0
scoreboard players set @e[type=player] alive 1
tp @a[scores={alive=0}] 0 1000 0

scoreboard players set Olexorus votes -1

function pandamium:misc/afk_playtime

execute store result score <player_count> variable if entity @a

execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a unless score @s leave_count matches 0 run function pandamium:on_join

execute as @a[gamemode=spectator] unless score @s staff_perms matches 2.. unless entity @s[x=-512,z=-512,dx=1024,dz=1024] run function pandamium:misc/spawn_restriction
execute in the_end as @a[gamemode=spectator,x=0] unless score @s staff_perms matches 2.. run tp @s 100.5 49.0 0.5 90 0
execute in the_end as @a[gamemode=spectator,x=0] unless score @s staff_perms matches 2.. run gamemode survival

execute as @a run function pandamium:check_triggers
execute as @a[scores={inventory=..-1,staff_perms=1..},limit=1] run function pandamium:triggers/inventory_shulkers
execute as @a[scores={enderchest=..-1,staff_perms=1..},limit=1] run function pandamium:triggers/enderchest_shulkers

execute as @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:misc/spawn_effects

execute as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,type=#pandamium:hostile] run tp 0 -1000 0
kill @e[type=boat,x=-128,y=0,z=-128,dx=256,dy=128,dz=256]

execute as @a[x=18,y=64,z=-10,distance=..2,gamemode=!spectator] run function pandamium:misc/random_teleport

function pandamium:misc/nether_spawn_prot
execute in the_nether as @e[type=ghast,x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run tp @s 0 -1000 0

execute as @a[scores={tpa_request=1..}] run function pandamium:tpa/request_timer

execute as @a[scores={jailed=1..}] unless data entity @s {Dimension:"minecraft:overworld"} run tp @s 3 57 0
execute as @a[scores={jailed=1..}] unless entity @s[x=-6,y=56,z=-6,dx=20,dy=5,dz=12] run tp @s 3 57 0
execute as @a[x=-6,y=57,z=-6,dx=20,dy=4,dz=12] unless score @s jailed matches 1.. unless score @s staff_perms matches 1.. run scoreboard players set @s spawn 1
execute as @e[type=item,x=-6,y=57,z=-6,dx=20,dy=4,dz=12] in pandamium:staff_world run function pandamium:misc/jail_items/as_item

execute as @a run scoreboard players operation @s playtime_hours = @s playtime_ticks
scoreboard players operation @a playtime_hours /= <ticks_per_hour> variable
execute as @a run scoreboard players operation @s monthly_playtime = @s monthly_pt_ticks
scoreboard players operation @a monthly_playtime /= <ticks_per_hour> variable

execute if score <sidebar_timer> variable matches 5.. run scoreboard players remove <sidebar_timer> variable 5
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard objectives setdisplay sidebar sidebar
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard players set <sidebar> variable 0

function pandamium:misc/auto_item_timer

function pandamium:misc/map_specific/loop

execute as @a[gamemode=!spectator,scores={active_particles=1..}] at @s run function pandamium:misc/particles/main

schedule function pandamium:main_loop 5t
