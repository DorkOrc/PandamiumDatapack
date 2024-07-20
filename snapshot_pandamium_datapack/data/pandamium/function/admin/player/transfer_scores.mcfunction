# arguments: old, new

#> Pre

# fail if usernames match
$data modify storage pandamium:temp compare set value "$(old)"
$execute if data storage pandamium:temp {compare:"$(new)"} run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" Collision! Cannot transfer \"$(old)\" to itself.","color":"red"}]
$execute if data storage pandamium:temp {compare:"$(new)"} run return 0

# fail if collision
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" Potential collision! \"$(old)\" already exists in the players database. Please talk to James about this.","color":"red"}]
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run return 0
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" Unable to copy data! \"$(new)\" does not exist in the players database. They must join the game once before their old data can be transferred.","color":"red"}]
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run return 0

# log
$tellraw @s [\
    {"text":"[admin]","color":"dark_green"},[{"text":" Scores log for $(old):\n","color":"green"},\
    "id = ",{"score":{"name":"$(old)","objective":"id"}},"\n",\
    "playtime_ticks = ",{"score":{"name":"$(old)","objective":"playtime_ticks"}},"\n",\
    "votes = ",{"score":{"name":"$(old)","objective":"votes"}},"\n",\
    "reward_credits = ",{"score":{"name":"$(old)","objective":"reward_credits"}},"\n",\
    "monthly_playtime_ticks = ",{"score":{"name":"$(old)","objective":"monthly_playtime_ticks"}},"\n",\
    "monthly_votes = ",{"score":{"name":"$(old)","objective":"monthly_votes"}},"\n",\
    "last_joined.year = ",{"score":{"name":"$(old)","objective":"last_joined.year"}},"\n",\
    "last_joined.month = ",{"score":{"name":"$(old)","objective":"last_joined.month"}},"\n",\
    "last_joined.day = ",{"score":{"name":"$(old)","objective":"last_joined.day"}},"\n",\
    "last_joined.hour = ",{"score":{"name":"$(old)","objective":"last_joined.hour"}},"\n",\
    "staff_rank = ",{"score":{"name":"$(old)","objective":"staff_rank"}},"\n",\
    "supporter_rank = ",{"score":{"name":"$(old)","objective":"supporter_rank"}},"\n",\
    "vip_rank = ",{"score":{"name":"$(old)","objective":"vip_rank"}},"\n",\
    "send_extra_debug_info = ",{"score":{"name":"$(old)","objective":"send_extra_debug_info"}},"\n",\
    "disable_attack_indicator = ",{"score":{"name":"$(old)","objective":"disable_attack_indicator"}},"\n",\
    "spectator_night_vision = ",{"score":{"name":"$(old)","objective":"spectator_night_vision"}},"\n",\
    "optn.disable_phantom_spawning = ",{"score":{"name":"$(old)","objective":"optn.disable_phantom_spawning"}},"\n",\
    "disable_idle_indicator = ",{"score":{"name":"$(old)","objective":"disable_idle_indicator"}},"\n",\
    "optn.disable_spectator_portals = ",{"score":{"name":"$(old)","objective":"optn.disable_spectator_portals"}},"\n",\
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
    "legacy_home_data.home_1.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_1.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_1.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_1.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_1.dimension"}},"\n",\
    "legacy_home_data.home_2.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_2.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_2.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_2.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_2.dimension"}},"\n",\
    "legacy_home_data.home_3.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_3.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_3.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_3.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_3.dimension"}},"\n",\
    "legacy_home_data.home_4.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_4.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_4.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_4.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_4.dimension"}},"\n",\
    "legacy_home_data.home_5.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_5.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_5.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_5.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_5.dimension"}},"\n",\
    "legacy_home_data.home_6.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_6.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_6.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_6.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_6.dimension"}},"\n",\
    "legacy_home_data.home_7.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_7.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_7.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_7.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_7.dimension"}},"\n",\
    "legacy_home_data.home_8.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_8.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_8.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_8.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_8.dimension"}},"\n",\
    "legacy_home_data.home_9.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_9.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_9.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_9.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_9.dimension"}},"\n",\
    "legacy_home_data.home_10.* = x:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_10.x"}},", y:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_10.y"}},", z:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_10.z"}},", d:",{"score":{"name":"$(old)","objective":"legacy_home_data.home_10.dimension"}}\
]]

#> Main
$function pandamium:impl/transfer_player_data/main {old:"$(old)",new:"$(new)"}

$execute as $(new) run function pandamium:player/update_tablist_value

#> Post
$tellraw @s [{"text":"\n[admin]","color":"dark_green"},[{"text":" Transferred scoreboard data from ","color":"green"},{"text":"$(old)","color":"aqua"}," to ",{"text":"$(new)","color":"aqua"},"!"]]
