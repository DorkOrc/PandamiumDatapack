# arguments: username, id

$data remove storage pandamium.db:cache online_players[{username:"$(username)"}]

# remove personal team (and kick from any other team)
$team remove player.$(username)
$team leave $(username)

# remove personal triggers
execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/remove_entry/loop_triggers

# remove tpa trigger
$scoreboard objectives remove tpa_$(username)
$scoreboard objectives remove kick_$(username)
$scoreboard objectives remove ban_$(username)
$scoreboard objectives remove jail_$(username)
$scoreboard objectives remove unjail_$(username)
$scoreboard objectives remove player_info_$(username)

# reset defaulted options
$execute if score $(username) optn.disable_dynamic_triggers.tpa_names matches 0 run scoreboard players reset $(username) optn.disable_dynamic_triggers.tpa_names
$execute if score $(username) optn.disable_dynamic_triggers.home_names matches 0 run scoreboard players reset $(username) optn.disable_dynamic_triggers.home_names
$execute if score $(username) optn.disable_dynamic_triggers.staff matches 0 run scoreboard players reset $(username) optn.disable_dynamic_triggers.staff

# manage tpa requests
function pandamium:utils/get/display_name/from_id with storage pandamium:temp entries[-1]
$tellraw @a[scores={tpa_request.sender_id=$(id)}] [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true},{"text":" canceled","color":"aqua"}," their TPA request by leaving the game!"]

$execute store result score <id> variable run scoreboard players get $(username) tpa_request.sender_id
execute if score <id> variable matches 1.. run tellraw @a[predicate=pandamium:matches_id,limit=1] [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true},{"text":" denied","color":"aqua"}," your TPA request by leaving the game!"]

$scoreboard players reset $(username) tpa_request.sender_id
$scoreboard players reset $(username) tpa_request.time

# remove stored click-events
$data remove storage pandamium.db:click_events entries[{owner:{id:$(id)}}]
