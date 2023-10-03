# arguments: username

$data remove storage pandamium.db:cache online_players[{username:"$(username)"}]

$team remove player.$(username)

$team leave $(username)
function pandamium:impl/database/cache/every_tick/remove_entry/try_join_default_team with storage pandamium:temp entries[-1]

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers

$execute store result score <id> variable run scoreboard players get $(username) id
$execute as @a if score @s tpa_request.sender_id = <id> variable run tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"text":"$(username) (offline)"},{"text":" canceled","color":"aqua"}," their TPA request by leaving the game!"]
