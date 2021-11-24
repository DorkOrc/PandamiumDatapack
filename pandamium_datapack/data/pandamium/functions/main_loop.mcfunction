tp @e[type=wither] 0 -1000 0

function pandamium:misc/update_dimension

scoreboard players set @a in_jail 0
scoreboard players set @a[x=-55,y=144,z=-112,dx=6,dy=5,dz=9] in_jail 1
scoreboard players set @a[x=-39,y=144,z=-112,dx=5,dy=5,dz=7] in_jail 2

# @a selects all players, @e[type=player] only alive ones
scoreboard players set @a alive 0
scoreboard players set @e[type=player] alive 1
execute as @a[scores={alive=0}] unless score @s death_count matches 1.. run tp 0 1000 0

scoreboard players set Olexorus votes -1

execute as @a[scores={track_afk=1}] run function pandamium:misc/afk_playtime

execute store result score <player_count> variable if entity @a
function pandamium:misc/players_sleeping_percentage

execute as @a[scores={playtime_ticks=1..5}] run function pandamium:first_join
execute as @a unless score @s leave_count matches 0 run function pandamium:on_join

function pandamium:misc/player_regions/update_regions

execute as @a[gamemode=spectator,scores={in_spawn=0,staff_perms=..1}] run function pandamium:misc/spawn_restriction
execute in the_end as @a[x=0,gamemode=spectator,scores={staff_perms=..1}] run function pandamium:misc/teleport/end_platform
execute in the_end as @a[x=0,gamemode=spectator,scores={staff_perms=..1}] run gamemode survival

execute as @a run function pandamium:check_triggers

tp @e[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,type=#pandamium:remove_at_spawn,tag=!spawn_protected] 0 -1000 0
kill @e[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,type=boat,tag=!spawn_protected]
execute in the_nether run tp @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,type=#pandamium:remove_at_spawn,tag=!spawn_protected] 0 -1000 0

execute as @a[x=-16,y=138,z=13,distance=..2.5,gamemode=!spectator] run function pandamium:misc/teleport/random/main

execute as @a[scores={tpa_request=1..}] run function pandamium:tpa/request_timer

execute as @a[scores={jailed=1}] unless score @s in_jail matches 1 run tp @s -51 144 -109 -180 0
execute as @a[scores={jailed=2}] unless score @s in_jail matches 2 run tp @s -37. 144 -107 0 0
execute as @a[scores={in_jail=1..}] unless score @s jailed matches 1.. unless score @s staff_perms matches 1.. run function pandamium:misc/teleport/spawn
execute as @e[x=-55,y=144,z=-112,dx=6,dy=5,dz=9,type=item,tag=!jail_items.ignore] in pandamium:staff_world run function pandamium:misc/jail_items/as_item
execute as @e[x=-39,y=144,z=-112,dx=5,dy=5,dz=7,type=item,tag=!jail_items.ignore] in pandamium:staff_world run function pandamium:misc/jail_items/as_item

execute as @a run scoreboard players operation @s playtime_hours = @s playtime_ticks
scoreboard players operation @a playtime_hours /= <ticks_per_hour> variable
execute as @a run scoreboard players operation @s monthly_playtime_hours = @s monthly_playtime_ticks
scoreboard players operation @a monthly_playtime_hours /= <ticks_per_hour> variable

execute if score <sidebar_timer> global matches 5.. run scoreboard players remove <sidebar_timer> global 5
execute if score <sidebar_timer> global matches ..0 unless score <sidebar> global matches 0 run scoreboard objectives setdisplay sidebar sidebar
execute if score <sidebar_timer> global matches ..0 unless score <sidebar> global matches 0 run scoreboard players set <sidebar> global 0

effect give @a[gamemode=spectator,scores={staff_perms=2..,spectator_vision=1}] night_vision 20 0 true

function pandamium:misc/item_clear/auto_item_timer

function pandamium:misc/thunderstorms_timer

function pandamium:misc/map_specific/loop
execute in pandamium:staff_world as @a[x=-6,y=63,z=8,dx=0,dy=3,dz=0] run function pandamium:misc/teleport/spawn

effect clear @a[scores={hidden=1}]
effect give @a[scores={hidden=1}] invisibility 1 0 true
title @a[scores={hidden=1}] actionbar {"text":"You are hidden","color":"green"}

execute as @a[gamemode=spectator] at @s run function pandamium:misc/portal/loop

function pandamium:misc/particles/loop

execute as @e[type=#pandamium:donkey_dupe_mobs,nbt={ChestedHorse:1b}] in pandamium:staff_world run function pandamium:misc/donkey_dupe_patch/drop_items

schedule function pandamium:main_loop 5t
