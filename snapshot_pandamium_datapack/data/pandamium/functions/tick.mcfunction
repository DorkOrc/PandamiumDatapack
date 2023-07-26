#> Pre
scoreboard players add <5_tick_loop> global 1
execute unless score <5_tick_loop> global matches 0..4 run scoreboard players set <5_tick_loop> global 0
scoreboard players add <20_tick_loop> global 1
execute unless score <20_tick_loop> global matches 0..19 run scoreboard players set <20_tick_loop> global 0

# Setup useful data
scoreboard players operation <previous_player_count> variable = <player_count> global
execute store result score <player_count> global if entity @a
execute if score <player_count> global < <previous_player_count> variable run function pandamium:player/ranks/empty_all_teams
function pandamium:player/update_everyones_dimension_scores

execute store result score <spawn_area_ticking_state> global if entity @a[predicate=pandamium:in_spawn,gamemode=!spectator,limit=1]
execute if score <spawn_area_ticking_state> global matches 0 store result score <mineshaft_elevator_is_loaded> global run scoreboard players set <maproom_elevator_is_loaded> global 0

# On-join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join

#> Main
execute if score <5_tick_loop> global matches 0 run function pandamium:every_5_ticks
execute if score <5_tick_loop> global matches 1 run function pandamium:player/check_everyones_triggers
execute if score <5_tick_loop> global matches 2 if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_5_ticks
execute if score <20_tick_loop> global matches 2 run function pandamium:every_20_ticks

execute at @a[scores={hidden=1..}] run tag @e[type=item,distance=..5] add track_pickup
execute at @a as @e[type=item,tag=track_pickup,distance=..5] run function pandamium:impl/hide/force_item_pickup

#> Post
function pandamium:impl/queue/tick
execute if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_tick
execute as @a[scores={detect.die=1..}] run function pandamium:detect/die
execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:impl/particles/tick_as_player

