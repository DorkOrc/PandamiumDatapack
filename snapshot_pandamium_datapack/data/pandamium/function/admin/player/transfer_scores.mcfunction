# arguments: old, new

#> Pre

# fail if usernames match
$data modify storage pandamium:temp compare set value "$(old)"
$execute if data storage pandamium:temp {compare:"$(new)"} run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' Collision! Cannot transfer "$(old)" to itself.',color:"red"}]
$execute if data storage pandamium:temp {compare:"$(new)"} run return 0

# fail if collision
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' Potential collision! "$(old)" already exists in the players database. Please talk to James about this.',color:"red"}]
$execute if data storage pandamium.db.players:data username_indexes."$(old)" run return 0
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' Unable to copy data! "$(new)" does not exist in the players database. They must join the game once before their old data can be transferred.',color:"red"}]
$execute unless data storage pandamium.db.players:data username_indexes."$(new)" run return 0

# log
$tellraw @s [\
    {text:"[admin]",color:"dark_green"},{text:" Scores log for $(old):\n",color:"green",extra:[\
    {text:"id = "},{score:{name:"$(old)",objective:"id"}},{text:"\n"},\
    {text:"playtime_ticks = "},{score:{name:"$(old)",objective:"playtime_ticks"}},{text:"\n"},\
    {text:"votes = "},{score:{name:"$(old)",objective:"votes"}},{text:"\n"},\
    {text:"reward_credits = "},{score:{name:"$(old)",objective:"reward_credits"}},{text:"\n"},\
    {text:"monthly_playtime_ticks = "},{score:{name:"$(old)",objective:"monthly_playtime_ticks"}},{text:"\n"},\
    {text:"monthly_votes = "},{score:{name:"$(old)",objective:"monthly_votes"}},{text:"\n"},\
    {text:"first_joined.datetime = "},{score:{name:"$(old)",objective:"first_joined.datetime"}},{text:"\n"},\
    {text:"last_joined.datetime = "},{score:{name:"$(old)",objective:"last_joined.datetime"}},{text:"\n"},\
    {text:"last_joined.year = "},{score:{name:"$(old)",objective:"last_joined.year"}},{text:"\n"},\
    {text:"last_joined.month = "},{score:{name:"$(old)",objective:"last_joined.month"}},{text:"\n"},\
    {text:"last_joined.day = "},{score:{name:"$(old)",objective:"last_joined.day"}},{text:"\n"},\
    {text:"last_joined.hour = "},{score:{name:"$(old)",objective:"last_joined.hour"}},{text:"\n"},\
    {text:"staff_rank = "},{score:{name:"$(old)",objective:"staff_rank"}},{text:"\n"},\
    {text:"supporter_rank = "},{score:{name:"$(old)",objective:"supporter_rank"}},{text:"\n"},\
    {text:"vip_rank = "},{score:{name:"$(old)",objective:"vip_rank"}},{text:"\n"},\
    {text:"send_extra_debug_info = "},{score:{name:"$(old)",objective:"send_extra_debug_info"}},{text:"\n"},\
    {text:"disable_attack_indicator = "},{score:{name:"$(old)",objective:"disable_attack_indicator"}},{text:"\n"},\
    {text:"spectator_night_vision = "},{score:{name:"$(old)",objective:"spectator_night_vision"}},{text:"\n"},\
    {text:"optn.disable_phantom_spawning = "},{score:{name:"$(old)",objective:"optn.disable_phantom_spawning"}},{text:"\n"},\
    {text:"optn.disable_spectator_portals = "},{score:{name:"$(old)",objective:"optn.disable_spectator_portals"}},{text:"\n"},\
    {text:"sneak_to_sit = "},{score:{name:"$(old)",objective:"sneak_to_sit"}},{text:"\n"},\
    {text:"hide_parkour_timer = "},{score:{name:"$(old)",objective:"hide_parkour_timer"}},{text:"\n"},\
    {text:"hide_auto_messages = "},{score:{name:"$(old)",objective:"hide_auto_messages"}},{text:"\n"},\
    {text:"disable_tpa_requests = "},{score:{name:"$(old)",objective:"disable_tpa_requests"}},{text:"\n"},\
    {text:"show_playtime_days = "},{score:{name:"$(old)",objective:"show_playtime_days"}},{text:"\n"},\
    {text:"disable_keep_inventory = "},{score:{name:"$(old)",objective:"disable_keep_inventory"}},{text:"\n"},\
    {text:"hide_punishments = "},{score:{name:"$(old)",objective:"hide_punishments"}},{text:"\n"},\
    {text:"hide_coordinates = "},{score:{name:"$(old)",objective:"hide_coordinates"}},{text:"\n"},\
    {text:"silent_punishments = "},{score:{name:"$(old)",objective:"silent_punishments"}},{text:"\n"},\
    {text:"disable_donator_prefix = "},{score:{name:"$(old)",objective:"disable_donator_prefix"}},{text:"\n"},\
    {text:"donator_migration_notice = "},{score:{name:"$(old)",objective:"donator_migration_notice"}},{text:"\n"},\
    {text:"on_join.tp_to_spawn = "},{score:{name:"$(old)",objective:"on_join.tp_to_spawn"}},{text:"\n"},\
    {text:"on_join.reset_spawnpoint = "},{score:{name:"$(old)",objective:"on_join.reset_spawnpoint"}},{text:"\n"},\
    {text:"on_join.take_items = "},{score:{name:"$(old)",objective:"on_join.take_items"}},{text:"\n"},\
    {text:"parkour.leaderboard_blacklist = "},{score:{name:"$(old)",objective:"parkour.leaderboard_blacklist"}},{text:"\n"},\
    {text:"jailed = "},{score:{name:"$(old)",objective:"jailed"}},{text:"\n"},\
    {text:"cheater = "},{score:{name:"$(old)",objective:"cheater"}},{text:"\n"},\
    {text:"pre_jail_pos_* = x:"},{score:{name:"$(old)",objective:"pre_jail_pos_x"}},{text:", y:"},{score:{name:"$(old)",objective:"pre_jail_pos_y"}},{text:", z:"},{score:{name:"$(old)",objective:"pre_jail_pos_z"}},{text:", d:"},{score:{name:"$(old)",objective:"pre_jail_pos_d"}},{text:"\n"},\
    {text:"legacy_home_data.home_1.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_1.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_1.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_1.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_1.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_2.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_2.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_2.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_2.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_2.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_3.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_3.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_3.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_3.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_3.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_4.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_4.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_4.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_4.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_4.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_5.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_5.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_5.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_5.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_5.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_6.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_6.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_6.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_6.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_6.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_7.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_7.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_7.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_7.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_7.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_8.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_8.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_8.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_8.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_8.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_9.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_9.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_9.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_9.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_9.dimension"}},{text:"\n"},\
    {text:"legacy_home_data.home_10.* = x:"},{score:{name:"$(old)",objective:"legacy_home_data.home_10.x"}},{text:", y:"},{score:{name:"$(old)",objective:"legacy_home_data.home_10.y"}},{text:", z:"},{score:{name:"$(old)",objective:"legacy_home_data.home_10.z"}},{text:", d:"},{score:{name:"$(old)",objective:"legacy_home_data.home_10.dimension"}},\
]}]

#> Main
$function pandamium:impl/transfer_player_data/main {old:"$(old)",new:"$(new)"}

$execute as $(new) run function pandamium:player/update_tablist_value

#> Post
$tellraw @s [{text:"\n[admin]",color:"dark_green"},{text:" Transferred scoreboard data from ",color:"green",extra:[{text:"$(old)",color:"aqua"},{text:" to "},{text:"$(new)",color:"aqua"},{text:"!"}]}]
