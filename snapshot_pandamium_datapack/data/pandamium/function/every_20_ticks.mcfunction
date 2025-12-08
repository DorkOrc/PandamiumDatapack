# Toggle Mob Spawning
execute store result score <mob_count> global if entity @e[type=!#pandamium:mob_limit_excluded,tag=!mob_limit_excluded]
execute unless score <disable_force_mob_spawning> global matches 1 if score <mob_count> global >= <mob_limit> global run gamerule spawn_mobs false
execute unless score <disable_force_mob_spawning> global matches 1 if score <mob_count> global < <mob_limit> global run gamerule spawn_mobs true

# Update Sidebar
execute in minecraft:overworld run function pandamium:misc/update_sidebar

# temporary donator migration notice
execute as @a[scores={donator_migration_notice=1,online_ticks=40..59}] run function pandamium:misc/print_migration_notice

# update rank advancement progress from playtime
execute as @a run scoreboard players operation @s temp_1 = @s playtime_ticks
scoreboard players operation @a temp_1 %= #ticks_per_hour constant
execute as @a[scores={temp_1=0..19}] run function pandamium:misc/update_rank_advancement_progress/self

# enable triggers
execute in minecraft:overworld run function pandamium:player/enable_everyones_triggers

# convert legacy flying eyeball entities to new format
execute as @e[type=item_display,tag=pandamium.flying_eyeball.root,tag=pandamium.ticking] at @s run function pandamium:impl/custom_entities/custom_entity_types/flying_eyeball/convert_legacy/main

# give leather horse armour to old zombie horses
execute as @e[type=zombie_horse,tag=!pandamium.not_legacy_zombie_horse,tag=!unnatural,tag=!pandamium.trapped,nbt=!{Tame:true}] run tag @s add pandamium.not_legacy_zombie_horse
execute as @e[type=zombie_horse,tag=!pandamium.not_legacy_zombie_horse,tag=!pandamium.legacy_zombie_horse_sun_protection] unless entity @s[tag=!unnatural,tag=!pandamium.trapped,nbt=!{Tame:true}] run function pandamium:impl/main_loop/legacy_zombie_horse_sun_protection

# re-disable send_command_feedback after 5 minutes of it being enabled
execute unless score <dev_environment> global matches 1 store result score <send_command_feedback> variable run gamerule send_command_feedback
execute unless score <dev_environment> global matches 1 if score <send_command_feedback> variable matches 0 run scoreboard players reset <command_feedback_disabled_seconds> global
execute unless score <dev_environment> global matches 1 if score <send_command_feedback> variable matches 1 run scoreboard players add <command_feedback_disabled_seconds> global 1
execute unless score <dev_environment> global matches 1 if score <command_feedback_disabled_seconds> global matches 1 run tellraw @a[predicate=pandamium:player/min_staff_perms/senior_moderator] [{color:"dark_gray",text:"[Operator Info]"},{color:"gray",text:" The game rule send_command_feedback was enabled... please re-enable once done! It will be automatically re-enabled in 5 minutes."}]
execute unless score <dev_environment> global matches 1 if score <command_feedback_disabled_seconds> global matches 300.. run gamerule send_command_feedback false
