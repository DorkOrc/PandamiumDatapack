#> Pre
scoreboard players add <5_tick_loop> global 1
execute unless score <5_tick_loop> global matches 0..4 run scoreboard players set <5_tick_loop> global 0
scoreboard players add <20_tick_loop> global 1
execute unless score <20_tick_loop> global matches 0..19 run scoreboard players set <20_tick_loop> global 0

execute store result score <current_gametime> global run time query gametime

scoreboard players add <ticks_since_rcon_time_update> global 1
execute if score <ticks_since_rcon_time_update> global matches 1 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Pandamium: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":10]"]
execute if score <ticks_since_rcon_time_update> global matches 18000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Pandamium: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":25]"]
execute if score <ticks_since_rcon_time_update> global matches 36000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Pandamium: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":40]"]
execute if score <ticks_since_rcon_time_update> global matches 54000 run tellraw @a[scores={send_extra_debug_info=2}] [{"text":"[Pandamium: Estimated time ","color":"gray","italic":true},{"score":{"name":"<hour>","objective":"global"}},":55]"]

# Update date-time
execute in pandamium:staff_world run data modify storage pandamium:temp command_output set from block 6 0 0 LastOutput
data modify storage pandamium:templates macro.hour__minute__second.hour set string storage pandamium:temp command_output 10 12
data modify storage pandamium:templates macro.hour__minute__second.minute set string storage pandamium:temp command_output 13 15
data modify storage pandamium:templates macro.hour__minute__second.second set string storage pandamium:temp command_output 16 18
function pandamium:impl/main_loop/get_precise_time with storage pandamium:templates macro.hour__minute__second

# Setup useful data
scoreboard players operation <previous_player_count> variable = <player_count> global
execute store result score <player_count> global if entity @a

execute store result score <spawn_area_ticking_state> global if entity @a[predicate=pandamium:in_spawn,gamemode=!spectator,limit=1]
execute if score <spawn_area_ticking_state> global matches 0 store result score <mineshaft_elevator_is_loaded> global run scoreboard players set <maproom_elevator_is_loaded> global 0

# On-join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join/main

#> Main
function pandamium:impl/database/cache/every_tick/main

# main loops
execute if score <5_tick_loop> global matches 0 run function pandamium:every_5_ticks
execute if score <5_tick_loop> global matches 1 run function pandamium:player/check_everyones_triggers
execute if score <5_tick_loop> global matches 2 if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_5_ticks
execute if score <20_tick_loop> global matches 2 run function pandamium:every_20_ticks
execute if score <20_tick_loop> global matches 3 as @a[scores={custom_effects.listen_for.every_second=1}] run function pandamium:impl/custom_effects/trigger/main {trigger:"every_second"}

execute if score <spawn_area_ticking_state> global matches 1 run scoreboard players add @a[scores={parkour.checkpoint=0..}] parkour.timer_ticks 1

execute at @a[scores={hidden=1..}] run tag @e[type=item,distance=..5] add track_pickup
execute at @a as @e[type=item,tag=track_pickup,distance=..5] run function pandamium:impl/hide/force_item_pickup
execute as @a[x=0,y=318,z=0,dx=0] run function pandamium:misc/warp/spawn

# disguise (fun)
execute as DorkOrc if score @s hidden matches 1.. at @s rotated ~ 0 positioned ^ ^ ^-0.5 rotated as @s run tp 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 ~ ~ ~ ~ ~

#> Post
function pandamium:impl/queue/tick
execute if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_tick
execute if score <spawn_area_ticking_state> global matches 1 as @a[predicate=pandamium:in_spawn,predicate=pandamium:wearing_frost_walker_enchantment_on_feet] run function pandamium:impl/unequip_frost_walker_boots
execute as @a[scores={detect.die=1..}] run function pandamium:detect/die/main
execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:impl/particles/tick_as_player

#> Data Pack Reloading
execute if score <ticks_since_rcon_time_update> global matches 6201..6221 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_rcon_time_update> global matches 24201..24220 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_rcon_time_update> global matches 42201..42221 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack
execute if score <ticks_since_rcon_time_update> global matches 60201..60221 if score <reload_data_pack> global matches 1 run function pandamium:misc/reload_data_pack

#> Stopping the Server
execute if score <seconds_until_restart> global matches 0..4 summon area_effect_cloud run function pandamium:impl/server_restart_countdown/kick_arbitrary_player
execute if score <stop_server> global matches 1 run kick @a The server has been closed. Check our Discord server to learn why.
execute if score <stop_server> global matches 1 run function pandamium:impl/database/cache/every_tick/main
execute if score <stop_server> global matches 1 run stop
