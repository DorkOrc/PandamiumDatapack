#> Pre
scoreboard players add <5_tick_loop> global 1
execute unless score <5_tick_loop> global matches 0..4 run scoreboard players set <5_tick_loop> global 0
scoreboard players add <20_tick_loop> global 1
execute unless score <20_tick_loop> global matches 0..19 run scoreboard players set <20_tick_loop> global 0

scoreboard players add <ticks_since_time_change> global 1
execute if score <ticks_since_time_change> global matches 1 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Server: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":10]"]
execute if score <ticks_since_time_change> global matches 18000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Server: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":25]"]
execute if score <ticks_since_time_change> global matches 36000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Server: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":40]"]
execute if score <ticks_since_time_change> global matches 54000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Server: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":55]"]

# Setup useful data
scoreboard players operation <previous_player_count> variable = <player_count> global
execute store result score <player_count> global if entity @a

execute store result score <spawn_area_ticking_state> global if entity @a[predicate=pandamium:in_spawn,gamemode=!spectator,limit=1]
execute if score <spawn_area_ticking_state> global matches 0 store result score <mineshaft_elevator_is_loaded> global run scoreboard players set <maproom_elevator_is_loaded> global 0

# On-join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join/main

#> Main
function pandamium:impl/database/cache/every_tick/main

execute if score <5_tick_loop> global matches 0 run function pandamium:every_5_ticks
execute if score <5_tick_loop> global matches 1 run function pandamium:player/check_everyones_triggers
execute if score <5_tick_loop> global matches 2 if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_5_ticks
execute if score <20_tick_loop> global matches 2 run function pandamium:every_20_ticks

execute at @a[scores={hidden=1..}] run tag @e[type=item,distance=..5] add track_pickup
execute at @a as @e[type=item,tag=track_pickup,distance=..5] run function pandamium:impl/hide/force_item_pickup
execute as @a[x=0,y=318,z=0,dx=0] run function pandamium:misc/warp/spawn

# disguise (fun)
execute as DorkOrc if score @s hidden matches 1.. at @s rotated ~ 0 positioned ^ ^ ^-0.5 rotated as @s run tp 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 ~ ~ ~ ~ ~

#> Post
function pandamium:impl/queue/tick
execute if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_tick
execute as @a[scores={detect.die=1..}] run function pandamium:detect/die
execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:impl/particles/tick_as_player

#> Data Pack Reloading
execute if score <ticks_since_time_change> global matches 600 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_time_change> global matches 18600 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_time_change> global matches 36600 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_time_change> global matches 54600 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
