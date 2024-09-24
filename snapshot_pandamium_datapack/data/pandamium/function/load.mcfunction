scoreboard players reset <stop_server> global
scoreboard players reset <seconds_until_restart> global

# set up important objectives
scoreboard objectives add id dummy
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
scoreboard objectives add db.players.index dummy

execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_action_id> global matches 1..20 run scoreboard players set <next_auto_action_id> global 1

# set up important global data and templates
function pandamium:startup/setup_dictionary
function pandamium:startup/setup_custom_item_default_data
function pandamium:startup/setup_templates
function pandamium:misc/update_hour_id

# Useful Constants
scoreboard players set #ticks_per_second constant 20
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #seconds_per_minute constant 60
scoreboard players set #seconds_per_hour constant 3600
scoreboard players set #minutes_per_hour constant 60
scoreboard players set #-100 constant -100
scoreboard players set #-10 constant -10
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #10 constant 10
scoreboard players set #12 constant 12
scoreboard players set #16 constant 16
scoreboard players set #20 constant 20
scoreboard players set #24 constant 24
scoreboard players set #31 constant 31
scoreboard players set #32 constant 32
scoreboard players set #40 constant 40
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #96 constant 96
scoreboard players set #100 constant 100
scoreboard players set #191 constant 191
scoreboard players set #255 constant 255
scoreboard players set #256 constant 256
scoreboard players set #360 constant 360
scoreboard players set #500 constant 500
scoreboard players set #510 constant 510
scoreboard players set #512 constant 512
scoreboard players set #600 constant 600
scoreboard players set #1000 constant 1000
scoreboard players set #18000 constant 18000
scoreboard players set #65536 constant 65536
scoreboard players set #1000000 constant 1000000

#
scoreboard objectives add staff_rank dummy
scoreboard objectives add supporter_rank dummy
scoreboard objectives add vip_rank dummy
scoreboard objectives add alt_of dummy

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add gameplay_rank dummy
scoreboard objectives add staff_perms dummy
scoreboard objectives add available_homes dummy

scoreboard objectives add has_flairs_perk dummy

scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy
scoreboard objectives add pre_jail_pos_x dummy
scoreboard objectives add pre_jail_pos_y dummy
scoreboard objectives add pre_jail_pos_z dummy
scoreboard objectives add pre_jail_pos_d dummy
scoreboard objectives add suspicious_ip dummy

scoreboard objectives add first_joined.year dummy
scoreboard objectives add first_joined.month dummy
scoreboard objectives add first_joined.day dummy
scoreboard objectives add first_joined.hour dummy

scoreboard objectives add last_joined.year dummy
scoreboard objectives add last_joined.month dummy
scoreboard objectives add last_joined.day dummy
scoreboard objectives add last_joined.hour dummy

scoreboard objectives add last_position.x dummy
scoreboard objectives add last_position.y dummy
scoreboard objectives add last_position.z dummy
scoreboard objectives add last_position.d dummy

scoreboard players reset * sidebar
scoreboard objectives add sidebar dummy {"bold":true,"color":"blue","font":"minecraft:uniform","text":"Pandamium"}
scoreboard objectives modify sidebar numberformat styled {"color":"red","font":"minecraft:uniform"}
scoreboard players display name <sidebar.mob_cap> sidebar {"color":"gray","font":"minecraft:uniform","text":"Mob Cap:"}
scoreboard players display name <sidebar.mob_count> sidebar {"color":"gray","font":"minecraft:uniform","text":"Mobs:"}
scoreboard players display name <sidebar.item_count> sidebar {"color":"gray","font":"minecraft:uniform","text":"Items:"}
scoreboard players display name <sidebar.player_count> sidebar {"color":"gray","font":"minecraft:uniform","text":"Players:"}

execute unless score <disable_force_sidebar> global matches 1 run scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives add tablist_value dummy
scoreboard objectives setdisplay list tablist_value

# Triggers
scoreboard objectives add super_secret_trigger trigger
scoreboard objectives add femail trigger ["femail",{"text":" -> mail","color":"gray"}]
scoreboard objectives add vote_shop trigger ["vote_shop",{"text":" -> rewards_shop","color":"gray"}]
scoreboard objectives add parkour.warp.Forgotten_Caverns trigger ["parkour.warp.Forgotten_Caverns",{"text":" -> parkour","color":"gray"}]
scoreboard objectives add help.advancements trigger
scoreboard objectives add news trigger ["news",{"text":" -> mail","color":"gray"}]
scoreboard objectives add dye.toggle trigger ["dye.toggle",{"text":" -> dye","color":"gray"}]

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
scoreboard objectives add mail trigger
scoreboard objectives add search_players trigger

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
scoreboard objectives add enderchest trigger
scoreboard objectives add dye trigger

scoreboard objectives add staff_menu trigger
scoreboard objectives add jail trigger
scoreboard objectives add unjail trigger
scoreboard objectives add kick trigger
scoreboard objectives add ban trigger
scoreboard objectives add restart_server trigger
scoreboard objectives add reload_data_pack trigger
scoreboard objectives add toggle_spectator trigger
scoreboard objectives add inspect_inventory trigger
scoreboard objectives add inspect_enderchest trigger
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
scoreboard objectives add player_info_v2 trigger
scoreboard objectives add inspect_container trigger
scoreboard objectives add hide trigger
scoreboard objectives add auto_actions_log trigger
scoreboard objectives add switch_dimension trigger
scoreboard objectives add search_nearby trigger
scoreboard objectives add enderman_farm.config trigger

# Trigger Restrictions
scoreboard objectives add trigger_data.rtp.disabled_until dummy
scoreboard objectives add trigger_data.rtp.cooldown_length dummy
#scoreboard objectives add trigger_data.tpa.disabled_until dummy
#scoreboard objectives add trigger_data.tpa.cooldown_length dummy
scoreboard objectives add trigger_data.home.disabled_until dummy
scoreboard objectives add trigger_data.home.cooldown_length dummy
scoreboard objectives add trigger_data.mail.disabled_until dummy
scoreboard objectives add trigger_data.mail.cooldown_length dummy

# Options
scoreboard objectives add disable_tpa_requests dummy
scoreboard objectives add disable_keep_inventory dummy
scoreboard objectives add optn.disable_phantom_spawning dummy
scoreboard objectives add disable_attack_indicator dummy
scoreboard objectives add hide_parkour_timer dummy
scoreboard objectives add show_playtime_days dummy
scoreboard objectives add sneak_to_sit dummy
scoreboard objectives add hide_coordinates dummy
scoreboard objectives add hide_auto_messages dummy
scoreboard objectives add disable_donator_prefix dummy
scoreboard objectives add hide_unset_homes dummy
scoreboard objectives add hide_voting_announcements dummy
scoreboard objectives add show_home_numbers dummy
scoreboard objectives add hide_trophy_suffix dummy
scoreboard objectives add optn.disable_dynamic_triggers.tpa_names dummy
scoreboard objectives add optn.disable_dynamic_triggers.home_names dummy
scoreboard objectives add optn.enable_dynamic_triggers.mail_names dummy
scoreboard objectives add optn.parkour.restart_on_fall dummy
scoreboard objectives add optn.disable_receiving_mail dummy
scoreboard objectives add optn.enable_mini_block_help_trigger dummy

scoreboard objectives add silent_punishments dummy
scoreboard objectives add optn.disable_dynamic_triggers.player_info dummy
scoreboard objectives add optn.disable_dynamic_triggers.punishments dummy
scoreboard objectives add optn.disable_dynamic_triggers.tp dummy
scoreboard objectives add spectator_night_vision dummy
scoreboard objectives add optn.disable_spectator_portals dummy
scoreboard objectives add send_extra_debug_info dummy
scoreboard objectives add optn.experimental.speed_hack_indicator dummy

# Server Stats
scoreboard objectives add votes dummy
scoreboard objectives add reward_credits dummy
scoreboard objectives add monthly_votes dummy
scoreboard objectives add yearly_votes dummy
scoreboard objectives add offline_votes dummy

scoreboard objectives add playtime_ticks custom:play_time
scoreboard objectives add monthly_playtime_ticks custom:play_time
scoreboard objectives add yearly_playtime_ticks custom:play_time
scoreboard objectives add online_ticks custom:play_time

# Attributes
scoreboard objectives add time_since_rest custom:time_since_rest
scoreboard objectives add portal_ticks dummy

scoreboard objectives add selected_player dummy
scoreboard objectives add selected_block.x dummy
scoreboard objectives add selected_block.y dummy
scoreboard objectives add selected_block.z dummy

scoreboard objectives add tpa_request.sender_id dummy
scoreboard objectives add tpa_request.time dummy

scoreboard objectives add gift_cooldown dummy
scoreboard objectives add rtp_cooldown dummy
scoreboard objectives add voting_summary_buffer dummy
scoreboard objectives add super_secret_trigger_cooldown dummy

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

scoreboard objectives add mail_data.inbox_cached dummy
scoreboard objectives add mail_data.unread_mails dummy
scoreboard objectives add mail_data.unclaimed_items dummy
scoreboard objectives add mail_data.drafts dummy
scoreboard objectives add mail_data.inbox_tab dummy

scoreboard objectives add last_player_head_user_id dummy

scoreboard objectives add tablist_sort_index dummy

scoreboard objectives add pronouns_type dummy

scoreboard objectives add custom_dye.type dummy
scoreboard objectives add custom_dye.off dummy
scoreboard objectives add custom_dye.health health

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
scoreboard objectives add detect.use.written_book used:written_book
scoreboard objectives add detect.use.bow used:bow
scoreboard objectives add detect.use.crossbow used:crossbow
scoreboard objectives add detect.use.wind_charge used:wind_charge
scoreboard objectives add detect.aviate custom:aviate_one_cm
scoreboard objectives add detect.take_damage custom:damage_taken
scoreboard objectives add detect.time_since_death custom:play_time

scoreboard objectives add zooming_until dummy
scoreboard objectives add just_dropped_mini_block_with_warning dummy
scoreboard objectives add custom_dye.custom_dyed_items_equipped dummy

scoreboard objectives add advancement.on_a_rail custom:minecart_one_cm
scoreboard objectives add sneak_to_sit_timer custom:play_time

scoreboard objectives add parkour.timer_ticks dummy
scoreboard objectives add parkour.checkpoint dummy
scoreboard objectives add parkour.falls dummy
scoreboard objectives add parkour.has_fallen dummy
scoreboard objectives add parkour.leaderboard_blacklist dummy
scoreboard objectives add parkour.node_id dummy
scoreboard objectives add parkour_1.best_time dummy
scoreboard objectives add parkour_2.best_time dummy
scoreboard objectives add parkour_2.saved_time dummy
scoreboard objectives add parkour_2.saved_checkpoint dummy
scoreboard objectives add parkour_2.saved_x dummy
scoreboard objectives add parkour_2.saved_y dummy
scoreboard objectives add parkour_2.saved_z dummy
scoreboard objectives add parkour_3.best_time dummy
scoreboard objectives add parkour_3.best_time_real dummy
scoreboard objectives add parkour_3.best_time_deathless dummy

scoreboard objectives add custom_effects.listen_for.change_dimension dummy
scoreboard objectives add custom_effects.listen_for.time_change dummy
scoreboard objectives add custom_effects.listen_for.every_second dummy
scoreboard objectives add custom_effects.has_effect.super_secret_scale dummy

# Miscellaneous Scoreboards
scoreboard objectives add temp_1 dummy

# Scoreboards Finalisations
function pandamium:startup/set_objective_colours
function pandamium:startup/reset_volatile_scoreboards
# and correct reset triggers/perms for any online players
execute as @a run function pandamium:misc/ranks/update_all
execute as @a run function pandamium:misc/enable_triggers

# Ensure dynamic triggers data is set up correctly
execute unless data storage pandamium.dynamic_triggers:data macros run function pandamium:impl/dynamic_triggers/set_default_macro_arguments

# Teams
function pandamium:startup/initialise_teams/main
team add dragon_fight
team modify dragon_fight friendlyFire false

# Forceload dummy blocks areas and stored_items db chunk
execute in overworld run forceload add 29999999 29999999
execute in the_nether run forceload add 29999999 29999999
execute in the_end run forceload add 29999999 29999999
execute in pandamium:staff_world run forceload add 29999999 29999999
execute in pandamium:staff_world run forceload add 128000 128000
execute in pandamium:staff_world run forceload add -1 -1 0 0

scoreboard players set <dummy_blocks_loaded> global 0
function pandamium:startup/place_dummy_blocks

# Forceload spawn area centre (2x2)
forceload add -289 175 -288 176

# centre spawn protection
setworldspawn 0 318 0 0
gamerule spawnRadius 0
setblock 0 317 0 barrier
fill 0 318 0 0 319 0 air

# Global Scoreboard Data
scoreboard players set <regular_item_clear_timer> global 36000
scoreboard players set <next_auto_message> global 0
scoreboard players set <restart_countdown> global -1
execute unless score <thunderstorms_timer> global matches 1..432000 run scoreboard players set <thunderstorms_timer> global 432000
execute unless data storage pandamium:global enderman_farm_warp.x run data remove storage pandamium:global enderman_farm_warp
execute store result score <enderman_farm_warp.protected> global run data get storage pandamium:global enderman_farm_warp.protected

## In case on_month_start did not run:
execute unless score <double_vote_credits_period_days> global matches 1.. run scoreboard players set <double_vote_credits_period_days> global 7
scoreboard players set <vote_credits_rewarded> global 1
execute if score <day> global <= <double_vote_credits_period_days> global run scoreboard players set <vote_credits_rewarded> global 2

execute store result score <monthly_votes_leaderboard_highest_value> global run data get storage pandamium.leader_boards:data leader_boards.monthly_votes.entries[0].value
execute store result score <monthly_playtime_leaderboard_highest_value> global run data get storage pandamium.leader_boards:data leader_boards.monthly_playtime.entries[0].value

## Function Loops
# tick
scoreboard players set <5_tick_loop> global -1
scoreboard players set <20_tick_loop> global -1

# secondary
schedule function pandamium:impl/leaderboards/update_loop 300s
execute unless score <disable_auto_messages> global matches 1 run schedule function pandamium:impl/auto_messages_loop 480s
schedule function pandamium:impl/item_clear/regular/loop 1s
schedule function pandamium:impl/phantoms/spawn_attempt 120s
schedule function pandamium:impl/item_clear/netherrack_and_ender_pearls 10s
