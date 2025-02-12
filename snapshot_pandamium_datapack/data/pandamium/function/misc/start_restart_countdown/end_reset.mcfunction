data modify storage pandamium:global restart_reason set value " so that The End can be reset"
data modify storage pandamium:global restart_kick_message set value {text:"The server has been temporarily closed while The End is reset.\n\nJoin back soon for our monthly ",extra:[{"text":"enhanced dragon fight","color":"aqua","bold":true},{text:"!"}]}
function pandamium:impl/server_restart_countdown/main
