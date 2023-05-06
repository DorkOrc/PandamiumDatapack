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

# On-join
execute as @a[scores={playtime_ticks=1}] run function pandamium:player/first_join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join

#> Main
execute if score <5_tick_loop> global matches 0 run function pandamium:main/5_tick
execute if score <5_tick_loop> global matches 1 run function pandamium:main/check_everyones_triggers
execute if score <20_tick_loop> global matches 2 run function pandamium:main/20_tick

#> Post
execute if data storage pandamium:queue queue[0] run function pandamium:impl/queue/main
function pandamium:impl/map_specific/main
execute as @a[scores={detect.die=1..}] run function pandamium:detect/die
execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:impl/particles/tick_as_player

