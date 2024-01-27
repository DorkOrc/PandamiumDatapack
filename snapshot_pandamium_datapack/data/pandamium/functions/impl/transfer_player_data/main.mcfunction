# arguments: new, old

# new entry must exist for this to run
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run say Data Transfer Error: new entry must exist for this to run
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run return 0

#> Main
# transfer id
$execute if score $(old) id matches 1.. store result storage pandamium:templates macro.id__bad_id__old__new__index.index int 1 run data get storage pandamium.db.players:data username_indexes."$(new)"
$execute if score $(old) id matches 1.. run data modify storage pandamium:templates macro.id__bad_id__old__new__index.old set value "$(old)"
$execute if score $(old) id matches 1.. run data modify storage pandamium:templates macro.id__bad_id__old__new__index.new set value "$(new)"
$execute if score $(old) id matches 1.. store result storage pandamium:templates macro.id__bad_id__old__new__index.id int 1 run scoreboard players get $(old) id
$execute if score $(old) id matches 1.. store result storage pandamium:templates macro.id__bad_id__old__new__index.bad_id int 1 run scoreboard players get $(new) id
$execute if score $(old) id matches 1.. run function pandamium:impl/transfer_player_data/transfer_ids with storage pandamium:templates macro.id__bad_id__old__new__index
$execute if score $(old) id matches 1.. run scoreboard players operation $(new) id = $(old) id

# stats
$execute if score $(old) playtime_ticks matches 1.. run scoreboard players operation $(new) playtime_ticks += $(old) playtime_ticks
$execute if score $(old) votes matches 1.. run scoreboard players operation $(new) votes += $(old) votes
$execute if score $(old) vote_credits matches 1.. run scoreboard players operation $(new) vote_credits += $(old) vote_credits

$execute unless score $(new) last_joined.year = $(new) last_joined.year run scoreboard players operation $(new) last_joined.year = $(old) last_joined.year
$execute unless score $(new) last_joined.year = $(new) last_joined.year run scoreboard players operation $(new) last_joined.month = $(old) last_joined.month
$execute unless score $(new) last_joined.year = $(new) last_joined.year run scoreboard players operation $(new) last_joined.day = $(old) last_joined.day
$execute unless score $(new) last_joined.year = $(new) last_joined.year run scoreboard players operation $(new) last_joined.hour = $(old) last_joined.hour

$scoreboard players reset $(new) first_joined.year
$scoreboard players reset $(new) first_joined.month
$scoreboard players reset $(new) first_joined.day
$scoreboard players reset $(new) first_joined.hour
$execute if score $(old) first_joined.year = $(old) first_joined.year run scoreboard players operation $(new) first_joined.year = $(old) first_joined.year
$execute if score $(old) first_joined.year = $(old) first_joined.year run scoreboard players operation $(new) first_joined.month = $(old) first_joined.month
$execute if score $(old) first_joined.year = $(old) first_joined.year run scoreboard players operation $(new) first_joined.day = $(old) first_joined.day
$execute if score $(old) first_joined.year = $(old) first_joined.year run scoreboard players operation $(new) first_joined.hour = $(old) first_joined.hour

# monthly stats
$execute if score $(old) monthly_playtime_ticks = $(old) monthly_playtime_ticks run scoreboard players operation $(new) monthly_playtime_ticks += $(old) monthly_playtime_ticks
$execute if score $(old) monthly_votes = $(old) monthly_votes run scoreboard players operation $(new) monthly_votes += $(old) monthly_votes

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
$execute if score $(old) donator_rank matches 1 run scoreboard players set $(new) donator_rank 1
$execute if score $(old) vip_rank matches 1 run scoreboard players set $(new) vip_rank 1

# options
$execute if score $(old) send_extra_debug_info matches 1.. run scoreboard players operation $(new) send_extra_debug_info = $(old) send_extra_debug_info
$execute if score $(old) disable_attack_indicator matches 1.. run scoreboard players operation $(new) disable_attack_indicator = $(old) disable_attack_indicator
$execute if score $(old) spectator_night_vision matches 1.. run scoreboard players operation $(new) spectator_night_vision = $(old) spectator_night_vision
$execute if score $(old) disable_insomnia matches 1.. run scoreboard players operation $(new) disable_insomnia = $(old) disable_insomnia
$execute if score $(old) disable_idle_indicator matches 1.. run scoreboard players operation $(new) disable_idle_indicator = $(old) disable_idle_indicator
$execute if score $(old) disable_spectator_portals matches 1.. run scoreboard players operation $(new) disable_spectator_portals = $(old) disable_spectator_portals
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
$execute if score $(old) hide_tablist_value matches 1.. run scoreboard players operation $(new) hide_tablist_value = $(old) hide_tablist_value
$execute if score $(old) hide_trophy_suffix matches 1.. run scoreboard players operation $(new) hide_trophy_suffix = $(old) hide_trophy_suffix

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

$execute if score $(old) active_particles matches 1.. run scoreboard players operation $(new) active_particles = $(old) active_particles
$execute if score $(old) death_particles matches 1.. run scoreboard players operation $(new) death_particles = $(old) death_particles

$scoreboard players operation $(new) last_position.x = $(old) last_position.x
$scoreboard players operation $(new) last_position.y = $(old) last_position.y
$scoreboard players operation $(new) last_position.z = $(old) last_position.z
$scoreboard players operation $(new) last_position.d = $(old) last_position.d

# homes
$data modify storage pandamium:templates macro.old__index set value {old:"$(old)"}
$execute store result storage pandamium:templates macro.old__index.index int 1 run data get storage pandamium.db.players:data username_indexes."$(new)"
function pandamium:impl/transfer_player_data/transfer_homes with storage pandamium:templates macro.old__index

#> Post
$scoreboard players reset $(old)
