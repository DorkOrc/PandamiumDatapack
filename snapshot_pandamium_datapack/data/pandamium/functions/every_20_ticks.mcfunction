# Disable TNT
execute unless score <disable_tnt_auto_defuse> global matches 1 as @e[type=#pandamium:tnt] at @s run function pandamium:impl/main_loop/defuse_tnt

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

# temporary (enable triggers)
function pandamium:player/enable_everyones_triggers

# temporary christmas mobs
execute if predicate pandamium:environment/is_night if score <month> global matches 12 if score <day> global matches 24.. in overworld as @a[x=0,gamemode=survival,predicate=pandamium:on_ground,sort=random,limit=1] at @s run function pandamium:misc/summon_random_christmas_mob
execute at @e[tag=christmas_mob] run particle minecraft:snowflake ~ ~1 ~ 0.25 0.5 0.25 0 5
