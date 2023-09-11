# arguments: home, plain_name

$data modify storage pandamium.db:cache online_players[-1].triggers append value {trigger_name:"home-$(plain_name)",run_trigger:"home set $(home)"}
$scoreboard objectives add home-$(plain_name) trigger
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: Added [home-$(plain_name)] trigger]","color":"gray","italic":true}
