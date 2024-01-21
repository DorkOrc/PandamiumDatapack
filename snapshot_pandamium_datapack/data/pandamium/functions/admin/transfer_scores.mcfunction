#> Pre

# fail if usernames match
$data modify storage pandamium:temp compare set value "$(old)"
$execute if data storage pandamium:temp {compare:"$(new)"} run tellraw @s {"text":"Collision Error: Cannot transfer \"$(old)\" to itself.","color":"red"}
$execute if data storage pandamium:temp {compare:"$(new)"} run return 0

# fail if collision
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run tellraw @s {"text":"Potential Collision Warning: \"$(old)\" already exists in the players database. Please talk to James about this.","color":"red"}
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run return 0
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run tellraw @s {"text":"Copying Warning: \"$(new)\" does not exist in the players database. Player must join the game once before their old data can be transferred.","color":"red"}
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run return 0

# log
$tellraw @s [\
    {"text":"[admin/transfer_scores]","color":"dark_green"},[{"text":" Scores log for $(old):\n","color":"green"},\
    "id = ",{"score":{"name":"$(old)","objective":"id"}},"\n",\
    "playtime_ticks = ",{"score":{"name":"$(old)","objective":"playtime_ticks"}},"\n",\
    "votes = ",{"score":{"name":"$(old)","objective":"votes"}},"\n",\
    "vote_credits = ",{"score":{"name":"$(old)","objective":"vote_credits"}},"\n",\
    "monthly_playtime_ticks = ",{"score":{"name":"$(old)","objective":"monthly_playtime_ticks"}},"\n",\
    "monthly_votes = ",{"score":{"name":"$(old)","objective":"monthly_votes"}},"\n",\
    "last_joined.year = ",{"score":{"name":"$(old)","objective":"last_joined.year"}},"\n",\
    "last_joined.month = ",{"score":{"name":"$(old)","objective":"last_joined.month"}},"\n",\
    "last_joined.day = ",{"score":{"name":"$(old)","objective":"last_joined.day"}},"\n",\
    "last_joined.hour = ",{"score":{"name":"$(old)","objective":"last_joined.hour"}},"\n",\
    "staff_rank = ",{"score":{"name":"$(old)","objective":"staff_rank"}},"\n",\
    "donator_rank = ",{"score":{"name":"$(old)","objective":"donator_rank"}},"\n",\
    "vip_rank = ",{"score":{"name":"$(old)","objective":"vip_rank"}},"\n",\
    "send_extra_debug_info = ",{"score":{"name":"$(old)","objective":"send_extra_debug_info"}},"\n",\
    "disable_attack_indicator = ",{"score":{"name":"$(old)","objective":"disable_attack_indicator"}},"\n",\
    "spectator_night_vision = ",{"score":{"name":"$(old)","objective":"spectator_night_vision"}},"\n",\
    "disable_insomnia = ",{"score":{"name":"$(old)","objective":"disable_insomnia"}},"\n",\
    "disable_idle_indicator = ",{"score":{"name":"$(old)","objective":"disable_idle_indicator"}},"\n",\
    "disable_spectator_portals = ",{"score":{"name":"$(old)","objective":"disable_spectator_portals"}},"\n",\
    "sneak_to_sit = ",{"score":{"name":"$(old)","objective":"sneak_to_sit"}},"\n",\
    "hide_parkour_timer = ",{"score":{"name":"$(old)","objective":"hide_parkour_timer"}},"\n",\
    "hide_auto_messages = ",{"score":{"name":"$(old)","objective":"hide_auto_messages"}},"\n",\
    "disable_tpa_requests = ",{"score":{"name":"$(old)","objective":"disable_tpa_requests"}},"\n",\
    "show_playtime_days = ",{"score":{"name":"$(old)","objective":"show_playtime_days"}},"\n",\
    "disable_keep_inventory = ",{"score":{"name":"$(old)","objective":"disable_keep_inventory"}},"\n",\
    "hide_punishments = ",{"score":{"name":"$(old)","objective":"hide_punishments"}},"\n",\
    "hide_coordinates = ",{"score":{"name":"$(old)","objective":"hide_coordinates"}},"\n",\
    "silent_punishments = ",{"score":{"name":"$(old)","objective":"silent_punishments"}},"\n",\
    "disable_donator_prefix = ",{"score":{"name":"$(old)","objective":"disable_donator_prefix"}},"\n",\
    "donator_migration_notice = ",{"score":{"name":"$(old)","objective":"donator_migration_notice"}},"\n",\
    "on_join.tp_to_spawn = ",{"score":{"name":"$(old)","objective":"on_join.tp_to_spawn"}},"\n",\
    "on_join.reset_spawnpoint = ",{"score":{"name":"$(old)","objective":"on_join.reset_spawnpoint"}},"\n",\
    "on_join.take_items = ",{"score":{"name":"$(old)","objective":"on_join.take_items"}},"\n",\
    "parkour.leaderboard_blacklist = ",{"score":{"name":"$(old)","objective":"parkour.leaderboard_blacklist"}},"\n",\
    "jailed = ",{"score":{"name":"$(old)","objective":"jailed"}},"\n",\
    "cheater = ",{"score":{"name":"$(old)","objective":"cheater"}},"\n",\
    "pre_jail_pos_* = x:",{"score":{"name":"$(old)","objective":"pre_jail_pos_x"}},", y:",{"score":{"name":"$(old)","objective":"pre_jail_pos_y"}},", z:",{"score":{"name":"$(old)","objective":"pre_jail_pos_z"}},", d:",{"score":{"name":"$(old)","objective":"pre_jail_pos_d"}},"\n",\
    "active_particles = ",{"score":{"name":"$(old)","objective":"active_particles"}},"\n",\
    "death_particles = ",{"score":{"name":"$(old)","objective":"death_particles"}},"\n",\
    "home_1_* = x:",{"score":{"name":"$(old)","objective":"home_1_x"}},", y:",{"score":{"name":"$(old)","objective":"home_1_y"}},", z:",{"score":{"name":"$(old)","objective":"home_1_z"}},", d:",{"score":{"name":"$(old)","objective":"home_1_d"}},"\n",\
    "home_2_* = x:",{"score":{"name":"$(old)","objective":"home_2_x"}},", y:",{"score":{"name":"$(old)","objective":"home_2_y"}},", z:",{"score":{"name":"$(old)","objective":"home_2_z"}},", d:",{"score":{"name":"$(old)","objective":"home_2_d"}},"\n",\
    "home_3_* = x:",{"score":{"name":"$(old)","objective":"home_3_x"}},", y:",{"score":{"name":"$(old)","objective":"home_3_y"}},", z:",{"score":{"name":"$(old)","objective":"home_3_z"}},", d:",{"score":{"name":"$(old)","objective":"home_3_d"}},"\n",\
    "home_4_* = x:",{"score":{"name":"$(old)","objective":"home_4_x"}},", y:",{"score":{"name":"$(old)","objective":"home_4_y"}},", z:",{"score":{"name":"$(old)","objective":"home_4_z"}},", d:",{"score":{"name":"$(old)","objective":"home_4_d"}},"\n",\
    "home_5_* = x:",{"score":{"name":"$(old)","objective":"home_5_x"}},", y:",{"score":{"name":"$(old)","objective":"home_5_y"}},", z:",{"score":{"name":"$(old)","objective":"home_5_z"}},", d:",{"score":{"name":"$(old)","objective":"home_5_d"}},"\n",\
    "home_6_* = x:",{"score":{"name":"$(old)","objective":"home_6_x"}},", y:",{"score":{"name":"$(old)","objective":"home_6_y"}},", z:",{"score":{"name":"$(old)","objective":"home_6_z"}},", d:",{"score":{"name":"$(old)","objective":"home_6_d"}},"\n",\
    "home_7_* = x:",{"score":{"name":"$(old)","objective":"home_7_x"}},", y:",{"score":{"name":"$(old)","objective":"home_7_y"}},", z:",{"score":{"name":"$(old)","objective":"home_7_z"}},", d:",{"score":{"name":"$(old)","objective":"home_7_d"}},"\n",\
    "home_8_* = x:",{"score":{"name":"$(old)","objective":"home_8_x"}},", y:",{"score":{"name":"$(old)","objective":"home_8_y"}},", z:",{"score":{"name":"$(old)","objective":"home_8_z"}},", d:",{"score":{"name":"$(old)","objective":"home_8_d"}},"\n",\
    "home_9_* = x:",{"score":{"name":"$(old)","objective":"home_9_x"}},", y:",{"score":{"name":"$(old)","objective":"home_9_y"}},", z:",{"score":{"name":"$(old)","objective":"home_9_z"}},", d:",{"score":{"name":"$(old)","objective":"home_9_d"}},"\n",\
    "home_10_* = x:",{"score":{"name":"$(old)","objective":"home_10_x"}},", y:",{"score":{"name":"$(old)","objective":"home_10_y"}},", z:",{"score":{"name":"$(old)","objective":"home_10_z"}},", d:",{"score":{"name":"$(old)","objective":"home_10_d"}}\
]]

#> Main
$function pandamium:impl/transfer_player_data/main {old:"$(old)",new:"$(new)"}

$execute as $(new) run function pandamium:player/update_tablist_value

#> Post
$tellraw @s [{"text":"\n[admin/transfer_scores]","color":"dark_green"},[{"text":" Transferred scoreboard data from ","color":"green"},{"text":"$(old)","color":"aqua"}," to ",{"text":"$(new)","color":"aqua"},"!"]]
