data modify storage pandamium:global restart_reason set value '" so that The End can be reset"'
data modify storage pandamium:global restart_kick_message set value '["The server has been temporarily closed while The End is reset.\\n\\nJoin back soon for our monthly ",{"text":"enhanced dragon fight","color":"aqua","bold":true},"!"]'
scoreboard players set <seconds_until_restart> global 300
function pandamium:impl/server_restart_countdown/every_second_until_restart
