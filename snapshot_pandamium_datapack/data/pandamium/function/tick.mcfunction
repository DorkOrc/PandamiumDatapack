#> Pre
execute store result score <current_gametime> global store result score <5_tick_loop> global store result score <20_tick_loop> global store result score <40_tick_loop> global run time query gametime
scoreboard players operation <5_tick_loop> global %= #5 constant
scoreboard players operation <20_tick_loop> global %= #20 constant
scoreboard players operation <40_tick_loop> global %= #40 constant

scoreboard players add <ticks_since_rcon_time_update> global 1
execute if score <ticks_since_rcon_time_update> global matches 1 run tellraw @a[scores={send_extra_debug_info=2}] [{text:"[Pandamium: Estimated time ",color:"gray",italic:true},{score:{name:"<hour>",objective:"global"}},":10]"]
execute if score <ticks_since_rcon_time_update> global matches 18000 run tellraw @a[scores={send_extra_debug_info=2}] [{text:"[Pandamium: Estimated time ",color:"gray",italic:true},{score:{name:"<hour>",objective:"global"}},":25]"]
execute if score <ticks_since_rcon_time_update> global matches 36000 run tellraw @a[scores={send_extra_debug_info=2}] [{text:"[Pandamium: Estimated time ",color:"gray",italic:true},{score:{name:"<hour>",objective:"global"}},":40]"]
execute if score <ticks_since_rcon_time_update> global matches 54000 run tellraw @a[scores={send_extra_debug_info=2}] [{text:"[Pandamium: Estimated time ",color:"gray",italic:true},{score:{name:"<hour>",objective:"global"}},":55]"]

# Update date-time
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".command_block_time_output set from block 6 0 0 LastOutput.text
data modify storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".hour set string storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".command_block_time_output 1 3
data modify storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".minute set string storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".command_block_time_output 4 6
data modify storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".second set string storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time".command_block_time_output 7 9
function pandamium:impl/main_loop/get_precise_time with storage pandamium:local functions."pandamium:impl/main_loop/get_precise_time"

# Setup useful data
scoreboard players operation <previous_player_count> variable = <player_count> global
execute store result score <player_count> global if entity @a

execute store result score <spawn_area_ticking_state> global if entity @a[predicate=pandamium:in_spawn,gamemode=!spectator,limit=1]
execute if score <spawn_area_ticking_state> global matches 0 store result score <mineshaft_elevator_is_loaded> global run scoreboard players set <maproom_elevator_is_loaded> global 0

# On-join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join/main

scoreboard players set @a alive 0
scoreboard players set @e[type=minecraft:player] alive 1

#> Main
function pandamium:impl/database/cache/every_tick/main
function pandamium:impl/database/cache/macros/run_movement_trail with storage pandamium:cache macros.movement_trail
function pandamium:impl/database/cache/macros/run_projectile_trail with storage pandamium:cache macros.projectile_trail

# main loops
execute if score <5_tick_loop> global matches 0 run function pandamium:every_5_ticks
execute if score <5_tick_loop> global matches 1 run function pandamium:player/check_everyones_triggers
execute if score <5_tick_loop> global matches 2 if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_5_ticks
execute if score <20_tick_loop> global matches 2 run function pandamium:every_20_ticks
execute if score <20_tick_loop> global matches 3 as @a[scores={custom_effects.listen_for.every_second=1}] run function pandamium:impl/custom_effects/trigger/main {trigger:"every_second"}

# miscellaneous
execute if score <spawn_area_ticking_state> global matches 1 run scoreboard players add @a[scores={parkour.checkpoint=0..}] parkour.timer_ticks 1
execute if score <spawn_area_ticking_state> global matches 1 run scoreboard players set @a[predicate=pandamium:in_spawn,scores={advancement.on_a_rail=1..}] advancement.on_a_rail 0

execute as @a[x=0,y=318,z=0,dx=0] run function pandamium:misc/warp/spawn

execute if score <dev_environment> global matches 1 as @a if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}] run scoreboard players set @s transient_equippable.time_since_worn 0
execute if entity @a[scores={transient_equippable.time_since_worn=0..1},limit=1] run function pandamium:impl/transient_equippable/every_tick

function pandamium:impl/idle/every_tick

effect clear @a[scores={detect.in_spectator_mode=1..,spectator_night_vision=1},gamemode=!spectator] night_vision
execute as @a store success score @s detect.in_spectator_mode if entity @s[gamemode=spectator]

# disable TNT (when the Carpet mod is disabled)
execute unless score <disable_tnt_auto_defuse> global matches 1 as @e[type=#pandamium:auto_defusable,tag=!defused,tag=!pandamium.defused] at @s run function pandamium:impl/main_loop/defuse_entity/main
execute unless score <disable_tnt_auto_defuse> global matches 1 at @a[gamemode=creative,limit=1] as @e[type=#arrows,distance=..10] if items entity @s contents *[intangible_projectile] run data merge entity @s {Owner:[I;0,0,0,0],item:{components:{"!minecraft:intangible_projectile":{}}}}

# disguise (fun)
execute as DorkOrc if score @s hidden matches 1.. at @s rotated ~ 0 positioned ^ ^ ^-0.5 rotated as @s run tp 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 ~ ~ ~ ~ ~

#> Post
execute as @e[type=marker,tag=pandamium.ticking] at @s run function pandamium:impl/custom_entities/every_tick

function pandamium:impl/queue/tick
execute if score <spawn_area_ticking_state> global matches 1 run function pandamium:impl/map_specific/every_tick
execute if score <spawn_area_ticking_state> global matches 1 as @a[predicate=pandamium:in_spawn,predicate=pandamium:wearing_frost_walker_enchantment_on_feet] run function pandamium:utils/unequip/feet

#> Clean Up Garbage
execute if score <text_utility_used> global matches 1 run function pandamium:impl/text/collect_garbage
data remove storage pandamium:local functions

#> Stopping the Server
execute if score <seconds_until_restart> global matches 0..4 summon marker if function pandamium:utils/discard_marker run function pandamium:impl/server_restart_countdown/kick_arbitrary_player
execute if score <stop_server> global matches 1 run kick @a The server has been closed. Check our Discord server to learn why.
execute if score <stop_server> global matches 1 run function pandamium:impl/database/cache/every_tick/main
execute if score <stop_server> global matches 1 run stop

#> Data Pack Reloading
execute if score <reload_data_pack> global matches 1 if score <data_pack_updated> global matches 1 run reload
