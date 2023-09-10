# arguments: username

$data remove storage pandamium.db:cache online_players[{username:"$(username)"}]
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Removed $(username) from [online_players] cache]","color":"gray","italic":true}

$team remove player.$(username)
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Removed [player.$(username)] team]","color":"gray","italic":true}

$team leave $(username)
function pandamium:impl/database/cache/every_tick/remove_entry/try_join_default_team with storage pandamium:temp entries[-1]

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers
