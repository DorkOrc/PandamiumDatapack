# Toggle Mob Spawning
execute store result score <mob_count> global if entity @e[type=!#pandamium:mob_limit_excluded,tag=!mob_limit_excluded]
execute unless score <disable_force_mob_spawning> global matches 1 if score <mob_count> global >= <mob_limit> global run gamerule doMobSpawning false
execute unless score <disable_force_mob_spawning> global matches 1 if score <mob_count> global < <mob_limit> global run gamerule doMobSpawning true

# Update Sidebar
function pandamium:misc/update_sidebar

# temporary donator migration notice
execute as @a[scores={donator_migration_notice=1,online_ticks=40..59}] run function pandamium:misc/print_migration_notice

# update rank advancement progress from playtime
execute as @a run scoreboard players operation @s temp_1 = @s playtime_ticks
scoreboard players operation @a temp_1 %= #ticks_per_hour constant
execute as @a[scores={temp_1=0..19}] run function pandamium:misc/update_rank_advancement_progress/self

# enable triggers
function pandamium:player/enable_everyones_triggers

# convert legacy flying eyeball entities to new format
execute as @e[type=item_display,tag=pandamium.flying_eyeball.root,tag=pandamium.ticking] at @s run function pandamium:impl/custom_entities/custom_entity_types/flying_eyeball/convert_legacy/main

# re-disable sendCommandFeedback after 5 minutes of it being enabled
execute unless score <dev_environment> global matches 1 store result score <send_command_feedback> variable run gamerule sendCommandFeedback
execute unless score <dev_environment> global matches 1 if score <send_command_feedback> variable matches 0 run scoreboard players reset <command_feedback_disabled_seconds> global
execute unless score <dev_environment> global matches 1 if score <send_command_feedback> variable matches 1 run scoreboard players add <command_feedback_disabled_seconds> global 1
execute unless score <dev_environment> global matches 1 if score <command_feedback_disabled_seconds> global matches 1 run tellraw @a[scores={staff_perms=3..}] [{color:"dark_gray",text:"[Operator Info]"},{color:"gray",text:" The game rule sendCommandFeedback was enabled... please re-enable once done! It will be automatically re-enabled in 5 minutes."}]
execute unless score <dev_environment> global matches 1 if score <command_feedback_disabled_seconds> global matches 300.. run gamerule sendCommandFeedback false
