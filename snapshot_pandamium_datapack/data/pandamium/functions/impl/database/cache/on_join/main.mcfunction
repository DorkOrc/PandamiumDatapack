# skip if already in cache
$execute if data storage pandamium.db:cache online_players[{username:"$(username)"}] run return 0

#> Create Entry
$data modify storage pandamium.db:cache online_players append value {username:"$(username)",id:$(id),triggers:[]}
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Added $(username) to [online_players] cache]","color":"gray","italic":true}

#> Triggers

# $data modify storage pandamium.db:cache online_players[-1].triggers append value {trigger_name:"this_is_a_test-$(username)",run_trigger:"sit set 1"}
# $scoreboard objectives add this_is_a_test-$(username) trigger
# $tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Added [this_is_a_test-$(username)] trigger]","color":"gray","italic":true}

#> Team
$team add player.$(username)
$team join player.$(username) @s
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Added [player.$(username)] team]","color":"gray","italic":true}
$team modify player.$(username) seeFriendlyInvisibles false

function pandamium:player/teams/update_base
function pandamium:player/teams/update_suffix
