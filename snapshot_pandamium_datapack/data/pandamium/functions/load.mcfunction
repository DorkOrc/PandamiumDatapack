# temporary
function pandamium:startup/temporary_database_fix/main

# set up important objectives
scoreboard objectives add id dummy
scoreboard objectives add session_id dummy
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
scoreboard objectives add db.players.index dummy

execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_action_id> global matches 1..20 run scoreboard players set <next_auto_action_id> global 1

# Double reward credits for the first week of each month
execute if score <vote_credits_rewarded> global matches 2 unless score <day> global matches ..7 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The week of double reward credits has ended! You will now only be granted ","color":"green"},{"text":"one reward credit","color":"aqua"}," for voting until next month."]]
execute if score <day> global matches ..7 unless score <vote_credits_rewarded> global matches 2 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" Voting will now grant you ","color":"green"},{"text":"double reward credits","color":"aqua"}," until the 8th day of the month!"]]

scoreboard players set <vote_credits_rewarded> global 1
execute if score <day> global matches ..7 run scoreboard players set <vote_credits_rewarded> global 2

#
execute store result score <monthly_votes_leaderboard_highest_value> global run data get storage pandamium:leaderboards monthly_votes.entries[0].value
execute store result score <monthly_playtime_leaderboard_highest_value> global run data get storage pandamium:leaderboards monthly_playtime.entries[0].value

# When adjusting this value, the relevant python scripts to generate function trees must also be re-ran with the new value enterred. Hard limit should be 999.
scoreboard players set <max_session_id> global 60
execute unless score <next_session_id> global matches 1.. run scoreboard players set <next_session_id> global 1
execute if score <next_session_id> global > <max_session_id> global run scoreboard players set <next_session_id> global 1

#
scoreboard objectives add staff_rank dummy
scoreboard objectives add donator_rank dummy
scoreboard objectives add vip_rank dummy
scoreboard objectives add alt_of dummy

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy

scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy
scoreboard objectives add pre_jail_pos_x dummy
scoreboard objectives add pre_jail_pos_y dummy
scoreboard objectives add pre_jail_pos_z dummy
scoreboard objectives add pre_jail_pos_d dummy
scoreboard objectives add suspicious_ip dummy

scoreboard objectives add last_joined.year dummy
scoreboard objectives add last_joined.month dummy
scoreboard objectives add last_joined.day dummy
scoreboard objectives add last_joined.hour dummy

scoreboard objectives add last_position.x dummy
scoreboard objectives add last_position.y dummy
scoreboard objectives add last_position.z dummy
scoreboard objectives add last_position.d dummy

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":true}
execute unless score <disable_force_sidebar> global matches 1 run scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives add tablist_value dummy
scoreboard objectives setdisplay list tablist_value

# Triggers
scoreboard objectives add spawn trigger
scoreboard objectives add enderman_farm trigger
scoreboard objectives add respawn trigger
scoreboard objectives add options trigger
scoreboard objectives add rtp trigger
scoreboard objectives add sit trigger
scoreboard objectives add afk trigger

scoreboard objectives add vote trigger
scoreboard objectives add rewards_shop trigger
scoreboard objectives add gift trigger
scoreboard objectives add discord trigger
scoreboard objectives add playtime trigger
scoreboard objectives add clear_inventory trigger
scoreboard objectives add world_info trigger
scoreboard objectives add leaderboards trigger

scoreboard objectives add homes trigger
scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard objectives add delhome trigger
scoreboard objectives add namehome trigger

scoreboard objectives add tpa trigger

scoreboard objectives add parkour trigger
scoreboard objectives add parkour.quit trigger
scoreboard objectives add parkour.restart trigger

scoreboard objectives add particles trigger
scoreboard objectives add flair trigger
scoreboard objectives add pose trigger
scoreboard objectives add frame_visibility trigger
scoreboard objectives add hat trigger
scoreboard objectives add item_font trigger
scoreboard objectives add sign_font trigger

scoreboard objectives add staff_menu trigger
scoreboard objectives add jail trigger
scoreboard objectives add unjail trigger
scoreboard objectives add kick trigger
scoreboard objectives add ban trigger
scoreboard objectives add restart_server trigger
scoreboard objectives add toggle_spectator trigger
scoreboard objectives add inventory trigger
scoreboard objectives add enderchest trigger
scoreboard objectives add item_clear trigger
scoreboard objectives add guidebook trigger
scoreboard objectives add tp trigger
scoreboard objectives add take_enderchest trigger
scoreboard objectives add take_inventory trigger
scoreboard objectives add take_bound_items trigger
scoreboard objectives add spawnpoint trigger
scoreboard objectives add staff_world trigger
scoreboard objectives add pre_jail_tp trigger
scoreboard objectives add player_info trigger
scoreboard objectives add container trigger
scoreboard objectives add hide trigger
scoreboard objectives add auto_actions_log trigger
scoreboard objectives add switch_dimension trigger

# Options
scoreboard objectives add disable_tpa_requests dummy
scoreboard objectives add disable_keep_inventory dummy
scoreboard objectives add disable_insomnia dummy
scoreboard objectives add disable_attack_indicator dummy
scoreboard objectives add hide_parkour_timer dummy
scoreboard objectives add show_playtime_days dummy
scoreboard objectives add sneak_to_sit dummy
scoreboard objectives add hide_coordinates dummy
scoreboard objectives add hide_auto_messages dummy
scoreboard objectives add disable_donator_prefix dummy
scoreboard objectives add disable_idle_indicator dummy
scoreboard objectives add hide_unset_homes dummy
scoreboard objectives add hide_voting_announcements dummy
scoreboard objectives add show_home_numbers dummy
scoreboard objectives add hide_tablist_value dummy
scoreboard objectives add hide_trophy_suffix dummy

scoreboard objectives add silent_punishments dummy
scoreboard objectives add spectator_night_vision dummy
scoreboard objectives add disable_spectator_portals dummy
scoreboard objectives add send_extra_debug_info dummy

# Server Stats
scoreboard objectives add votes dummy
scoreboard objectives add monthly_votes dummy
scoreboard objectives add vote_credits dummy
scoreboard objectives add offline_votes dummy

scoreboard objectives add playtime_ticks custom:play_time
scoreboard objectives add monthly_playtime_ticks custom:play_time
scoreboard objectives add online_ticks custom:play_time

# Atrributes
scoreboard objectives add time_since_rest custom:time_since_rest
scoreboard objectives add portal_ticks dummy

scoreboard objectives add in_dimension dummy
scoreboard objectives add selected_player dummy
scoreboard objectives add selected_block.x dummy
scoreboard objectives add selected_block.y dummy
scoreboard objectives add selected_block.z dummy

scoreboard objectives add tpa_request.sender_id dummy
scoreboard objectives add tpa_request.time dummy

scoreboard objectives add gift_cooldown dummy
scoreboard objectives add rtp_cooldown dummy
scoreboard objectives add voting_summary_buffer dummy

scoreboard objectives add active_particles dummy
scoreboard objectives add death_particles dummy

scoreboard objectives add font.gradient.left_colour dummy

scoreboard objectives add hidden dummy
scoreboard objectives add pre_hide_pos_x dummy
scoreboard objectives add pre_hide_pos_y dummy
scoreboard objectives add pre_hide_pos_z dummy
scoreboard objectives add pre_hide_pos_d dummy

scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_d dummy

scoreboard objectives add idle.last_r0 dummy
scoreboard objectives add idle.last_r1 dummy
scoreboard objectives add idle.time custom:play_time

# On Join (set to 1 to do something when a player joins)
scoreboard objectives add on_join.take_items dummy
scoreboard objectives add on_join.tp_to_spawn dummy
scoreboard objectives add on_join.reset_spawnpoint dummy

# Detection
scoreboard objectives add detect.leave_game custom:leave_game
scoreboard objectives add detect.die deathCount
scoreboard objectives add detect.use.ender_pearl used:ender_pearl
scoreboard objectives add detect.use.trident used:trident
scoreboard objectives add detect.use.wet_sponge used:wet_sponge
scoreboard objectives add detect.use.splash_potion used:splash_potion
scoreboard objectives add detect.use.lingering_potion used:lingering_potion
scoreboard objectives add detect.aviate custom:aviate_one_cm
scoreboard objectives add detect.take_damage custom:damage_taken

scoreboard objectives add advancement.on_a_rail custom:minecart_one_cm
scoreboard objectives add sneak_to_sit_timer custom:play_time

scoreboard objectives add parkour.timer_ticks dummy
scoreboard objectives add parkour.checkpoint dummy
scoreboard objectives add parkour.leaderboard_blacklist dummy
scoreboard objectives add parkour.node_id dummy
scoreboard objectives add parkour_1.best_time dummy
scoreboard objectives add parkour_2.best_time dummy
scoreboard objectives add parkour_2.saved_time dummy
scoreboard objectives add parkour_2.saved_checkpoint dummy
scoreboard objectives add parkour_2.saved_x dummy
scoreboard objectives add parkour_2.saved_y dummy
scoreboard objectives add parkour_2.saved_z dummy

# Miscellaneous Scoreboards
scoreboard objectives add temp_1 dummy

# Scoreboards Finalisations
function pandamium:startup/set_objective_colours
function pandamium:startup/reset_volatile_scoreboards
# and correct reset triggers/perms for any online players
execute as @a run function pandamium:misc/ranks/update_all
execute as @a run function pandamium:misc/enable_triggers

# Teams
function pandamium:startup/initialise_teams/main
team add gray_color
team modify gray_color color gray
team join gray_color Players:
team join gray_color Mobs:
team join gray_color Items:
team join gray_color MobCap:
team add dragon_fight
team modify dragon_fight friendlyFire false

# Forceload staff world platform (2x2)
execute in pandamium:staff_world run forceload add -1 -1 0 0
schedule function pandamium:startup/place_dummy_blocks 1t

# Forceload a single chunk outside the world border in all dimensions
execute in overworld run forceload add 29999999 29999999
execute in the_nether run forceload add 29999999 29999999
execute in the_end run forceload add 29999999 29999999
execute in pandamium:staff_world run forceload add 29999999 29999999

# centre spawn protection
setworldspawn 0 318 0 0
gamerule spawnRadius 0
setblock 0 317 0 barrier
fill 0 318 0 0 319 0 air

# Useful Constants
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_second constant 20
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #12 constant 12
scoreboard players set #16 constant 16
scoreboard players set #24 constant 24
scoreboard players set #31 constant 31
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #96 constant 96
scoreboard players set #100 constant 100
scoreboard players set #191 constant 191
scoreboard players set #255 constant 255
scoreboard players set #256 constant 256
scoreboard players set #500 constant 500
scoreboard players set #600 constant 600
scoreboard players set #1000 constant 1000
scoreboard players set #65536 constant 65536
scoreboard players set #1000000 constant 1000000

# Global Counters
scoreboard players set <regular_item_clear_timer> global 36000
scoreboard players set <next_auto_message> global 0
scoreboard players set <restart_countdown> global -1
execute unless score <thunderstorms_timer> global matches 1..432000 run scoreboard players set <thunderstorms_timer> global 432000

# Setup Dictionary and Templates
function pandamium:startup/setup_dictionary
function pandamium:startup/setup_templates
function pandamium:misc/update_hour_id

# Function Loops
scoreboard players set <5_tick_loop> global -1
scoreboard players set <20_tick_loop> global -1

schedule function pandamium:impl/leaderboards/update_loop 300s
execute unless score <disable_auto_messages> global matches 1 run schedule function pandamium:impl/auto_messages_loop 480s
schedule function pandamium:impl/item_clear/regular/loop 1s
schedule function pandamium:impl/phantoms/loop 120s
schedule function pandamium:impl/remove_nbt/loop 30s
schedule function pandamium:impl/item_clear/netherrack_and_ender_pearls 10s
