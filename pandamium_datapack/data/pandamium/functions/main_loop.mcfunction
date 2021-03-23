tp @e[type=wither] 0 -1000 0

scoreboard players set @a in_overworld 0
scoreboard players set @a[x=0] in_overworld 1
scoreboard players set @a in_jail 0
scoreboard players set @a[x=-7,y=79,z=1,dx=5,dy=4,dz=6] in_jail 1

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

execute as @a[x=-512,z=-512,dx=1024,z=1024] run function pandamium:misc/spawn_effects
execute in the_nether as @a[x=-512,z=-512,dx=1024,dz=1024] run function pandamium:misc/spawn_effects

tp @e[x=-512,z=-512,dx=1024,dz=1024,type=#pandamium:remove_at_spawn,tag=!spawn_protected] 0 -1000 0
kill @e[type=boat,x=-128,z=-128,dx=256,dz=256,tag=!spawn_protected]

execute as @a[x=-12,y=86,z=13,distance=..2,gamemode=!spectator] run function pandamium:misc/teleport/random/main

function pandamium:misc/nether_spawn_prot
execute in the_nether as @e[type=ghast,x=-512,z=-512,dx=1024,dz=1024] run tp 0 -1000 0

execute as @a[scores={tpa_request=1..}] run function pandamium:tpa/request_timer

tp @a[scores={jailed=1..,in_jail=0}] -4 79 4 0 0
execute as @a[scores={in_jail=1}] unless score @s jailed matches 1.. unless score @s staff_perms matches 1.. run scoreboard players set @s spawn 1
execute as @e[type=item,x=-7,y=79,z=1,dx=5,dy=4,dz=6] in pandamium:staff_world run function pandamium:misc/jail_items/as_item

execute as @a run scoreboard players operation @s playtime_hours = @s playtime_ticks
scoreboard players operation @a playtime_hours /= <ticks_per_hour> variable
execute as @a run scoreboard players operation @s monthly_playtime = @s monthly_pt_ticks
scoreboard players operation @a monthly_playtime /= <ticks_per_hour> variable

execute if score <sidebar_timer> variable matches 5.. run scoreboard players remove <sidebar_timer> variable 5
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard objectives setdisplay sidebar sidebar
execute if score <sidebar_timer> variable matches ..0 unless score <sidebar> variable matches 0 run scoreboard players set <sidebar> variable 0

effect give @a[gamemode=spectator,scores={staff_perms=2..}] night_vision 12 0 true

function pandamium:misc/auto_item_timer

function pandamium:misc/map_specific/loop

execute as @a[gamemode=!spectator,scores={active_particles=1..}] at @s run function pandamium:misc/particles/main

schedule function pandamium:main_loop 5t
