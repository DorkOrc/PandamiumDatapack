# arguments: username

$data remove storage pandamium.db:cache online_players[{username:"$(username)"}]

$team remove player.$(username)

$team leave $(username)
function pandamium:impl/database/cache/every_tick/remove_entry/try_join_default_team with storage pandamium:temp entries[-1]

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers
