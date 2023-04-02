scoreboard objectives add id dummy {"text":"id","color":"gold","underlined":true}
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_action_id> global matches 1..20 run scoreboard players set <next_auto_action_id> global 1

scoreboard objectives add staff_rank dummy {"text":"staff_perms","color":"gold"}
scoreboard objectives add donator_rank dummy {"text":"donator_rank","color":"dark_purple"}
scoreboard objectives add vip_rank dummy {"text":"vip_rank","color":"gold"}
scoreboard objectives add is_staff_alt dummy

scoreboard objectives add gameplay_perms dummy {"text":"gameplay_perms","color":"gray"}
scoreboard objectives add staff_perms dummy {"text":"staff_perms","color":"gray"}

scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy
scoreboard objectives add pre_jail_pos_x dummy
scoreboard objectives add pre_jail_pos_y dummy
scoreboard objectives add pre_jail_pos_z dummy
scoreboard objectives add pre_jail_pos_d dummy
scoreboard objectives add suspicious_ip dummy

scoreboard objectives add last_joined.year dummy {"text":"last_joined.year","color":"#007FFF"}
scoreboard objectives add last_joined.month dummy {"text":"last_joined.month","color":"#007FFF"}
scoreboard objectives add last_joined.day dummy {"text":"last_joined.day","color":"#007FFF"}
scoreboard objectives add last_joined.hour dummy {"text":"last_joined.hour","color":"#007FFF"}

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":true}
execute unless score <disable_force_sidebar> global matches 1 run scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives setdisplay list votes

# Triggers
scoreboard objectives add spawn trigger {"text":"spawn","color":"gray"}
scoreboard objectives add enderman_farm trigger {"text":"enderman_farm","color":"gray"}
scoreboard objectives add respawn trigger {"text":"respawn","color":"gray"}
scoreboard objectives add options trigger {"text":"options","color":"gray"}
scoreboard objectives add rtp trigger {"text":"rtp","color":"gray"}
scoreboard objectives add sit trigger {"text":"sit","color":"gray"}
scoreboard objectives add afk trigger {"text":"afk","color":"gray"}

scoreboard objectives add vote trigger {"text":"vote","color":"gray"}
scoreboard objectives add vote_shop trigger {"text":"vote_shop","color":"gray"}
scoreboard objectives add gift trigger {"text":"gift","color":"gray"}
scoreboard objectives add discord trigger {"text":"discord","color":"gray"}
scoreboard objectives add playtime trigger {"text":"playtime","color":"gray"}
scoreboard objectives add clear_inventory trigger {"text":"clear_inventory","color":"gray"}
scoreboard objectives add world_info trigger {"text":"world_info","color":"gray"}
scoreboard objectives add leaderboards trigger {"text":"leaderboards","color":"gray"}
scoreboard objectives add save_mob.spawn trigger {"text":"save_mob.spawn","color":"gray"}

scoreboard objectives add homes trigger {"text":"homes","color":"gray"}
scoreboard objectives add home trigger {"text":"home","color":"gray"}
scoreboard objectives add sethome trigger {"text":"sethome","color":"gray"}
scoreboard objectives add delhome trigger {"text":"delhome","color":"gray"}

scoreboard objectives add tpa trigger {"text":"tpa","color":"gray"}

scoreboard objectives add parkour trigger {"text":"parkour","color":"gray"}
scoreboard objectives add parkour.quit trigger {"text":"parkour.quit","color":"gray"}
scoreboard objectives add parkour.restart trigger {"text":"parkour.restart","color":"gray"}

scoreboard objectives add particles trigger {"text":"particles","color":"gray"}
scoreboard objectives add pose trigger {"text":"pose","color":"gray"}
scoreboard objectives add frame_visibility trigger {"text":"frame_visibility","color":"gray"}
scoreboard objectives add hat trigger {"text":"hat","color":"gray"}
scoreboard objectives add item_font trigger {"text":"item_font","color":"gray"}
scoreboard objectives add sign_font trigger {"text":"sign_font","color":"gray"}
scoreboard objectives add donator_area trigger {"text":"donator_area","color":"gray"}

scoreboard objectives add staff_menu trigger {"text":"staff_menu","color":"gray"}
scoreboard objectives add jail trigger {"text":"jail","color":"gray"}
scoreboard objectives add unjail trigger {"text":"unjail","color":"gray"}
scoreboard objectives add kick trigger {"text":"kick","color":"gray"}
scoreboard objectives add ban trigger {"text":"ban","color":"gray"}
scoreboard objectives add restart trigger {"text":"restart","color":"gray"}
scoreboard objectives add toggle_spectator trigger {"text":"toggle_spectator","color":"gray"}
scoreboard objectives add inventory trigger {"text":"inventory","color":"gray"}
scoreboard objectives add enderchest trigger {"text":"enderchest","color":"gray"}
scoreboard objectives add item_clear trigger {"text":"item_clear","color":"gray"}
scoreboard objectives add guidebook trigger {"text":"guidebook","color":"gray"}
scoreboard objectives add tp trigger {"text":"tp","color":"gray"}
scoreboard objectives add take_enderchest trigger {"text":"take_enderchest","color":"gray"}
scoreboard objectives add take_inventory trigger {"text":"take_inventory","color":"gray"}
scoreboard objectives add take_bound_items trigger {"text":"take_bound_items","color":"gray"}
scoreboard objectives add spawnpoint trigger {"text":"spawnpoint","color":"gray"}
scoreboard objectives add staff_world trigger {"text":"staff_world","color":"gray"}
scoreboard objectives add pre_jail_tp trigger {"text":"pre_jail_tp","color":"gray"}
scoreboard objectives add player_info trigger {"text":"player_info","color":"gray"}
scoreboard objectives add container trigger {"text":"container","color":"gray"}
scoreboard objectives add hide trigger {"text":"hide","color":"gray"}
scoreboard objectives add auto_actions_log trigger {"text":"auto_actions_log","color":"gray"}
scoreboard objectives add switch_dimension trigger {"text":"switch_dimension","color":"gray"}

# Options
scoreboard objectives add disable_tpa_requests dummy
scoreboard objectives add disable_keep_inventory dummy
scoreboard objectives add disable_insomnia dummy
scoreboard objectives add disable_attack_indicator dummy
scoreboard objectives add hide_parkour_timer dummy
scoreboard objectives add show_playtime_days dummy
scoreboard objectives add sneak_to_sit dummy
scoreboard objectives add hide_auto_messages dummy
scoreboard objectives add disable_donator_prefix dummy
scoreboard objectives add disable_afk_indicator dummy

scoreboard objectives add silent_punishments dummy
scoreboard objectives add spectator_night_vision dummy
scoreboard objectives add disable_spectator_portals dummy
scoreboard objectives add send_extra_debug_info dummy

# Server Stats
scoreboard objectives add votes dummy {"text":"votes","color":"gold"}
scoreboard objectives add monthly_votes dummy {"text":"monthly_votes","color":"gold"}
scoreboard objectives add vote_credits dummy {"text":"vote_credits","color":"gold"}

scoreboard objectives add playtime_ticks custom:play_time {"text":"playtime_ticks","color":"gold"}
scoreboard objectives add monthly_playtime_ticks custom:play_time {"text":"monthly_playtime_ticks","color":"gold"}
scoreboard objectives add online_ticks custom:play_time

# Homes
scoreboard objectives add home_1_x dummy {"text":"home_1_x","color":"green"}
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy
scoreboard objectives add home_1_d dummy
scoreboard objectives add home_2_x dummy {"text":"home_2_x","color":"green"}
scoreboard objectives add home_2_y dummy
scoreboard objectives add home_2_z dummy
scoreboard objectives add home_2_d dummy
scoreboard objectives add home_3_x dummy {"text":"home_3_x","color":"green"}
scoreboard objectives add home_3_y dummy
scoreboard objectives add home_3_z dummy
scoreboard objectives add home_3_d dummy
scoreboard objectives add home_4_x dummy {"text":"home_4_x","color":"green"}
scoreboard objectives add home_4_y dummy
scoreboard objectives add home_4_z dummy
scoreboard objectives add home_4_d dummy
scoreboard objectives add home_5_x dummy {"text":"home_5_x","color":"green"}
scoreboard objectives add home_5_y dummy
scoreboard objectives add home_5_z dummy
scoreboard objectives add home_5_d dummy
scoreboard objectives add home_6_x dummy {"text":"home_6_x","color":"green"}
scoreboard objectives add home_6_y dummy
scoreboard objectives add home_6_z dummy
scoreboard objectives add home_6_d dummy
scoreboard objectives add home_7_x dummy {"text":"home_7_x","color":"green"}
scoreboard objectives add home_7_y dummy
scoreboard objectives add home_7_z dummy
scoreboard objectives add home_7_d dummy
scoreboard objectives add home_8_x dummy {"text":"home_8_x","color":"green"}
scoreboard objectives add home_8_y dummy
scoreboard objectives add home_8_z dummy
scoreboard objectives add home_8_d dummy
scoreboard objectives add home_9_x dummy {"text":"home_9_x","color":"green"}
scoreboard objectives add home_9_y dummy
scoreboard objectives add home_9_z dummy
scoreboard objectives add home_9_d dummy
scoreboard objectives add home_10_x dummy {"text":"home_10_x","color":"green"}
scoreboard objectives add home_10_y dummy
scoreboard objectives add home_10_z dummy
scoreboard objectives add home_10_d dummy

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

scoreboard objectives add active_particles dummy
scoreboard objectives add death_particles dummy

scoreboard objectives add hidden dummy
scoreboard objectives add pre_hide_pos_x dummy
scoreboard objectives add pre_hide_pos_y dummy
scoreboard objectives add pre_hide_pos_z dummy
scoreboard objectives add pre_hide_pos_d dummy

scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_d dummy

scoreboard objectives add afk.last_r0 dummy
scoreboard objectives add afk.last_r1 dummy
scoreboard objectives add afk.time custom:play_time

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
scoreboard objectives add detect.aviate custom:aviate_one_cm
scoreboard objectives add detect.take_damage custom:damage_taken
scoreboard objectives add detect.advancement.on_a_rail custom:minecart_one_cm
scoreboard objectives add detect.sneak_to_sit_time custom:play_time

scoreboard objectives add parkour.timer_ticks dummy
scoreboard objectives add parkour.checkpoint dummy
scoreboard objectives add parkour.leaderboard_blacklist dummy
scoreboard objectives add parkour.node_id dummy
scoreboard objectives add parkour_1.best_time dummy {"text":"parkour_1.best_time","color":"gold"}
scoreboard objectives add parkour_2.best_time dummy {"text":"parkour_2.best_time","color":"gold"}
scoreboard objectives add parkour_2.saved_time dummy
scoreboard objectives add parkour_2.saved_checkpoint dummy
scoreboard objectives add parkour_2.saved_x dummy
scoreboard objectives add parkour_2.saved_y dummy
scoreboard objectives add parkour_2.saved_z dummy

# Miscellaneous Scoreboards
scoreboard objectives add temp_1 dummy

# Reset Volatile Scoreboards
function pandamium:startup/reset_volatile_scoreboards

# Setup Dictionary
function pandamium:startup/setup_dictionary

# Teams
function pandamium:startup/initialise_teams

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

# Useful Constants
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_second constant 20
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #100 constant 100

# Global Counters
scoreboard players set <regular_item_clear_timer> global 36000
scoreboard players set <next_auto_message> global 0
scoreboard players set <restart_countdown> global -1
execute unless score <thunderstorms_timer> global matches 1..432000 run scoreboard players set <thunderstorms_timer> global 432000

# Function Loops
function pandamium:main_loop

function pandamium:misc/sidebar
schedule function pandamium:misc/leaderboards/update_loop 300s
schedule function pandamium:misc/auto_messages 60s
function pandamium:misc/item_clear/regular/loop
function pandamium:misc/item_clear/netherrack_and_ender_pearls
function pandamium:misc/map_specific/fake_blocks/loop
function pandamium:misc/map_specific/main_loop
function pandamium:misc/map_specific/tick_loop
function pandamium:misc/remove_nbt/loop
function pandamium:misc/phantoms/loop
