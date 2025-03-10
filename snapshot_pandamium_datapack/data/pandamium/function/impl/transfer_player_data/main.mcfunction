# arguments: new, old

# new entry must exist for this to run
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run say Data Transfer Error: new entry must exist for this to run
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run return 0

#> Main
# transfer id
data modify storage pandamium:temp arguments set value {}
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id run data modify storage pandamium:temp arguments.old set value "$(old)"
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id run data modify storage pandamium:temp arguments.new set value "$(new)"
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id store result storage pandamium:temp arguments.index int 1 run data get storage pandamium.db.players:data username_indexes."$(new)"
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id store result storage pandamium:temp arguments.id int 1 run scoreboard players get $(old) id
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id store result storage pandamium:temp arguments.bad_id int 1 run scoreboard players get $(new) id
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id run function pandamium:impl/transfer_player_data/transfer_ids with storage pandamium:temp arguments
$execute if score $(old) id matches 1.. unless score $(new) id = $(old) id run scoreboard players operation $(new) id = $(old) id

# stats
$execute if score $(old) playtime_ticks matches 1.. run scoreboard players operation $(new) playtime_ticks += $(old) playtime_ticks
$execute if score $(old) votes matches 1.. run scoreboard players operation $(new) votes += $(old) votes
$execute if score $(old) reward_credits matches 1.. run scoreboard players operation $(new) reward_credits += $(old) reward_credits
$execute if score $(old) offline_votes matches 1.. run scoreboard players operation $(new) offline_votes += $(old) offline_votes

$execute if score $(old) first_joined.datetime = $(old) first_joined.datetime run scoreboard players operation $(new) first_joined.datetime = $(old) first_joined.datetime

$execute if score $(old) last_joined.datetime = $(old) last_joined.datetime run scoreboard players operation $(new) last_joined.datetime = $(old) last_joined.datetime
$execute if score $(old) last_joined.year matches 2000.. run function pandamium:impl/transfer_player_data/transfer_last_joined with storage pandamium:temp arguments

# monthly stats
$execute if score $(old) monthly_playtime_ticks = $(old) monthly_playtime_ticks run scoreboard players operation $(new) monthly_playtime_ticks += $(old) monthly_playtime_ticks
$execute if score $(old) monthly_votes = $(old) monthly_votes run scoreboard players operation $(new) monthly_votes += $(old) monthly_votes
$execute if score $(old) has_flairs_perk matches 1 run scoreboard players set $(new) has_flairs_perk 1

# yearly stats
$execute if score $(old) yearly_playtime_ticks = $(old) yearly_playtime_ticks run scoreboard players operation $(new) yearly_playtime_ticks += $(old) yearly_playtime_ticks
$execute if score $(old) yearly_votes = $(old) yearly_votes run scoreboard players operation $(new) yearly_votes += $(old) yearly_votes

# parkour stats
$execute if score $(old) parkour_1.best_time = $(old) parkour_1.best_time run scoreboard players operation $(new) parkour_1.best_time += $(old) parkour_1.best_time

$execute if score $(old) parkour_2.best_time = $(old) parkour_2.best_time run scoreboard players operation $(new) parkour_2.best_time += $(old) parkour_2.best_time
$execute if score $(old) parkour_2.saved_time = $(old) parkour_2.saved_time run scoreboard players operation $(new) parkour_2.saved_time += $(old) parkour_2.saved_time
$execute if score $(old) parkour_2.saved_time = $(old) parkour_2.saved_time run scoreboard players operation $(new) parkour_2.saved_checkpoint += $(old) parkour_2.saved_checkpoint
$execute if score $(old) parkour_2.saved_time = $(old) parkour_2.saved_time run scoreboard players operation $(new) parkour_2.saved_x += $(old) parkour_2.saved_x
$execute if score $(old) parkour_2.saved_time = $(old) parkour_2.saved_time run scoreboard players operation $(new) parkour_2.saved_y += $(old) parkour_2.saved_y
$execute if score $(old) parkour_2.saved_time = $(old) parkour_2.saved_time run scoreboard players operation $(new) parkour_2.saved_z += $(old) parkour_2.saved_z

$execute if score $(old) parkour_3.best_time = $(old) parkour_3.best_time run scoreboard players operation $(new) parkour_3.best_time += $(old) parkour_3.best_time

# ranks
$execute if score $(old) staff_rank matches 1.. run scoreboard players operation $(new) staff_rank = $(old) staff_rank
$execute if score $(old) supporter_rank matches 1 run scoreboard players set $(new) supporter_rank 1
$execute if score $(old) vip_rank matches 1 run scoreboard players set $(new) vip_rank 1

# options
$execute if score $(old) send_extra_debug_info matches 1.. run scoreboard players operation $(new) send_extra_debug_info = $(old) send_extra_debug_info
$execute if score $(old) disable_attack_indicator matches 1.. run scoreboard players operation $(new) disable_attack_indicator = $(old) disable_attack_indicator
$execute if score $(old) spectator_night_vision matches 1.. run scoreboard players operation $(new) spectator_night_vision = $(old) spectator_night_vision
$execute if score $(old) optn.disable_phantom_spawning matches 1.. run scoreboard players operation $(new) optn.disable_phantom_spawning = $(old) optn.disable_phantom_spawning
$execute if score $(old) optn.disable_spectator_portals matches 1.. run scoreboard players operation $(new) optn.disable_spectator_portals = $(old) optn.disable_spectator_portals
$execute if score $(old) sneak_to_sit matches 1.. run scoreboard players operation $(new) sneak_to_sit = $(old) sneak_to_sit
$execute if score $(old) hide_parkour_timer matches 1.. run scoreboard players operation $(new) hide_parkour_timer = $(old) hide_parkour_timer
$execute if score $(old) hide_auto_messages matches 1.. run scoreboard players operation $(new) hide_auto_messages = $(old) hide_auto_messages
$execute if score $(old) disable_tpa_requests matches 1.. run scoreboard players operation $(new) disable_tpa_requests = $(old) disable_tpa_requests
$execute if score $(old) show_playtime_days matches 1.. run scoreboard players operation $(new) show_playtime_days = $(old) show_playtime_days
$execute if score $(old) disable_keep_inventory matches 1.. run scoreboard players operation $(new) disable_keep_inventory = $(old) disable_keep_inventory
$execute if score $(old) hide_punishments matches 1.. run scoreboard players operation $(new) hide_punishments = $(old) hide_punishments
$execute if score $(old) hide_coordinates matches 1.. run scoreboard players operation $(new) hide_coordinates = $(old) hide_coordinates
$execute if score $(old) silent_punishments matches 1.. run scoreboard players operation $(new) silent_punishments = $(old) silent_punishments
$execute if score $(old) disable_donator_prefix matches 1.. run scoreboard players operation $(new) disable_donator_prefix = $(old) disable_donator_prefix
$execute if score $(old) hide_unset_homes matches 1.. run scoreboard players operation $(new) hide_unset_homes = $(old) hide_unset_homes
$execute if score $(old) hide_voting_announcements matches 1.. run scoreboard players operation $(new) hide_voting_announcements = $(old) hide_voting_announcements
$execute if score $(old) show_home_numbers matches 1.. run scoreboard players operation $(new) show_home_numbers = $(old) show_home_numbers
$execute if score $(old) hide_trophy_suffix matches 1.. run scoreboard players operation $(new) hide_trophy_suffix = $(old) hide_trophy_suffix
$execute if score $(old) optn.disable_dynamic_triggers.tpa_names matches 1.. run scoreboard players operation $(new) optn.disable_dynamic_triggers.tpa_names = $(old) optn.disable_dynamic_triggers.tpa_names
$execute if score $(old) optn.disable_dynamic_triggers.home_names matches 1.. run scoreboard players operation $(new) optn.disable_dynamic_triggers.home_names = $(old) optn.disable_dynamic_triggers.home_names
$execute if score $(old) optn.enable_dynamic_triggers.mail_names matches 1.. run scoreboard players operation $(new) optn.enable_dynamic_triggers.mail_names = $(old) optn.enable_dynamic_triggers.mail_names
$execute if score $(old) optn.disable_dynamic_triggers.punishments matches 1.. run scoreboard players operation $(new) optn.disable_dynamic_triggers.punishments = $(old) optn.disable_dynamic_triggers.punishments
$execute if score $(old) optn.disable_dynamic_triggers.player_info matches 1.. run scoreboard players operation $(new) optn.disable_dynamic_triggers.player_info = $(old) optn.disable_dynamic_triggers.player_info
$execute if score $(old) optn.disable_dynamic_triggers.tp matches 1.. run scoreboard players operation $(new) optn.disable_dynamic_triggers.tp = $(old) optn.disable_dynamic_triggers.tp
$execute if score $(old) optn.parkour.restart_on_fall matches 1.. run scoreboard players operation $(new) optn.parkour.restart_on_fall = $(old) optn.parkour.restart_on_fall
$execute if score $(old) optn.disable_receiving_mail matches 1.. run scoreboard players operation $(new) optn.disable_receiving_mail = $(old) optn.disable_receiving_mail
$execute if score $(old) optn.trail_particles_when_stationary matches 1.. run scoreboard players operation $(new) optn.trail_particles_when_stationary = $(old) optn.trail_particles_when_stationary
$execute if score $(old) optn.do_projectile_trails matches 1.. run scoreboard players operation $(new) optn.do_projectile_trails = $(old) optn.do_projectile_trails

# misc
$execute if score $(old) donator_migration_notice matches 1 run scoreboard players set $(new) donator_migration_notice 1

$execute if score $(old) on_join.tp_to_spawn matches 1 run scoreboard players set $(new) on_join.tp_to_spawn 1
$execute if score $(old) on_join.reset_spawnpoint matches 1 run scoreboard players set $(new) on_join.reset_spawnpoint 1
$execute if score $(old) on_join.take_items matches 1 run scoreboard players set $(new) on_join.take_items 1

$execute if score $(old) parkour.leaderboard_blacklist matches 1 run scoreboard players set $(new) parkour.leaderboard_blacklist 1

$execute if score $(old) jailed matches 1.. run scoreboard players set $(new) jailed 1
$execute if score $(old) cheater matches 1.. run scoreboard players set $(new) cheater 1
$execute if score $(old) pre_jail_pos_x = $(old) pre_jail_pos_x run scoreboard players operation $(new) pre_jail_pos_x = $(old) pre_jail_pos_x
$execute if score $(old) pre_jail_pos_x = $(old) pre_jail_pos_x run scoreboard players operation $(new) pre_jail_pos_y = $(old) pre_jail_pos_y
$execute if score $(old) pre_jail_pos_x = $(old) pre_jail_pos_x run scoreboard players operation $(new) pre_jail_pos_z = $(old) pre_jail_pos_z
$execute if score $(old) pre_jail_pos_x = $(old) pre_jail_pos_x run scoreboard players operation $(new) pre_jail_pos_d = $(old) pre_jail_pos_d

$scoreboard players operation $(new) last_position.x = $(old) last_position.x
$scoreboard players operation $(new) last_position.y = $(old) last_position.y
$scoreboard players operation $(new) last_position.z = $(old) last_position.z
$scoreboard players operation $(new) last_position.d = $(old) last_position.d

# homes
$data modify storage pandamium:temp arguments set value {old:"$(old)"}
$execute store result storage pandamium:temp arguments.index int 1 run data get storage pandamium.db.players:data username_indexes."$(new)"
function pandamium:impl/transfer_player_data/transfer_homes with storage pandamium:temp arguments

#> Post
$scoreboard players reset $(old)
