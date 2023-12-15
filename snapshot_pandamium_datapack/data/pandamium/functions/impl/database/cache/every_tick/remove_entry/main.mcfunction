# arguments: username

$data remove storage pandamium.db:cache online_players[{username:"$(username)"}]

$team remove player.$(username)

$team leave $(username)
function pandamium:impl/database/cache/every_tick/remove_entry/try_join_default_team with storage pandamium:temp entries[-1]

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers

# tpa requests
$execute store result score <sender_id> variable run scoreboard players get $(username) id
$execute as @a if score @s tpa_request.sender_id = <sender_id> variable run tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"text":"$(username) (offline)"},{"text":" canceled","color":"aqua"}," their TPA request by leaving the game!"]

$execute store result score <sender_id> variable run scoreboard players get $(username) tpa_request.sender_id
$execute as @a if score @s id = <sender_id> variable run tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"text":"$(username) (offline)"},{"text":" denied","color":"aqua"}," your TPA request by leaving the game!"]

$scoreboard players reset $(username) tpa_request.sender_id
$scoreboard players reset $(username) tpa_request.time

# remove stored click-events
$data remove storage pandamium:click_events entries[{owner:{id:$(id)}}]
