# arguments: trigger_name

$execute if data storage pandamium.db:cache online_players[{triggers:[{trigger_name:"$(trigger_name)"}]}] run return 0

$data remove storage pandamium.db:cache online_players[].triggers[{trigger_name:"$(trigger_name)"}]
$scoreboard objectives remove $(trigger_name)

$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Removed [$(trigger_name)] trigger]","color":"gray","italic":true}
