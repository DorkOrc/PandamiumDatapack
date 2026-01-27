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

scoreboard players operation <previous_spawn_area_ticking_state> global = <spawn_area_ticking_state> global
execute store success score <spawn_area_ticking_state> global in pandamium:hub if entity @a[limit=1,x=0,predicate=!pandamium:player/any_invisible_staff_state]

# On-join
execute as @a unless score @s detect.leave_game matches 0 run function pandamium:player/on_join/main

scoreboard players set @a alive 0
scoreboard players set @e[type=minecraft:player] alive 1

# Force vanished players into spectator mode
execute if score <vanish_on> global matches 1 as @a[scores={vanished=1},gamemode=!spectator] run trigger vanish

#> Main
execute in minecraft:overworld run function pandamium:impl/database/cache/every_tick/main
execute in minecraft:overworld run function pandamium:impl/database/cache/macros/run_movement_trail with storage pandamium:cache macros.movement_trail
execute in minecraft:overworld run function pandamium:impl/database/cache/macros/run_projectile_trail with storage pandamium:cache macros.projectile_trail

# main loops
execute in minecraft:overworld run function pandamium:player/check_everyones_triggers
execute if score <5_tick_loop> global matches 0 in minecraft:overworld run function pandamium:every_5_ticks
execute if score <20_tick_loop> global matches 2 in minecraft:overworld run function pandamium:every_20_ticks
execute if score <20_tick_loop> global matches 3 in minecraft:overworld as @a[scores={custom_effects.listen_for.every_second=1}] run function pandamium:impl/custom_effects/trigger/main {trigger:"every_second"}
execute if score <20_tick_loop> global matches 12 in minecraft:overworld as @e[type=!#pandamium:edit_entity/cannot_be_renamed,predicate=!pandamium:entity/custom_name/processed] run function pandamium:entity/custom_name/make_copy

# hub
execute if score <spawn_area_ticking_state> global matches 1 in pandamium:hub run function pandamium:impl/hub/every_tick
execute if score <spawn_area_ticking_state> global matches 1 if score <5_tick_loop> global matches 2 in pandamium:hub run function pandamium:impl/hub/every_5_ticks
execute if score <spawn_area_ticking_state> global matches 1 if score <20_tick_loop> global matches 4 in pandamium:hub run function pandamium:impl/hub/every_20_ticks
execute in minecraft:overworld as @a[predicate=pandamium:in_legacy_spawn_area] at @s run function pandamium:misc/clamp_entity_position_outside_legacy_spawn_area

# miscellaneous
execute if score <dev_environment> global matches 1 as @a if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}] run scoreboard players set @s transient_equippable.time_since_worn 0
execute in minecraft:overworld if entity @a[scores={transient_equippable.time_since_worn=0..1},limit=1] run function pandamium:impl/transient_equippable/every_tick

execute in minecraft:overworld run function pandamium:impl/idle/every_tick

effect clear @a[scores={detect.in_spectator_mode=1..,spectator_night_vision=1},gamemode=!spectator] night_vision
execute as @a store success score @s detect.in_spectator_mode if entity @s[gamemode=spectator]

# disable TNT (when the Carpet mod is disabled)
execute unless score <disable_tnt_auto_defuse> global matches 1 as @e[type=#pandamium:auto_defusable,tag=!defused,tag=!pandamium.defused] at @s run function pandamium:impl/main_loop/defuse_entity/main
execute unless score <disable_tnt_auto_defuse> global matches 1 at @a[gamemode=creative,limit=1] as @e[type=#arrows,distance=..10] if items entity @s contents *[intangible_projectile] run data merge entity @s {Owner:[I;0,0,0,0],item:{components:{"!minecraft:intangible_projectile":{}}}}

# disguise (fun)
execute as DorkOrc if score @s hidden matches 1.. at @s rotated ~ 0 positioned ^ ^ ^-0.5 rotated as @s run tp 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 ~ ~ ~ ~ ~

#> Post
execute in minecraft:overworld as @e[type=marker,tag=pandamium.ticking] at @s run function pandamium:impl/custom_entities/every_tick

execute in minecraft:overworld run function pandamium:impl/queue/tick

#> Clean Up Garbage
execute in minecraft:overworld run execute if score <text_utility_used> global matches 1 run function pandamium:impl/text/collect_garbage
data remove storage pandamium:local functions

#> Stopping the Server
execute in minecraft:overworld run execute if score <seconds_until_restart> global matches 0..4 summon marker if function pandamium:utils/discard_marker run function pandamium:impl/server_restart_countdown/kick_arbitrary_player
execute if score <stop_server> global matches 1 run kick @a The server has been closed. Check our Discord server to learn why.
execute in minecraft:overworld run execute if score <stop_server> global matches 1 run function pandamium:impl/database/cache/every_tick/main
execute if score <stop_server> global matches 1 run stop

#> Data Pack Reloading
execute if score <reload_data_pack> global matches 1 if score <data_pack_updated> global matches 1 run reload
