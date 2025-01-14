data modify storage pandamium:global restart_reason set value " for maintenance"
data modify storage pandamium:global restart_kick_message set value {text:"The server has been temporarily closed for maintenance!\n\nKeep an eye on ",extra:[{"text":"#snapshot-ingame-chat","color":"blue"},{text:" to know when you can join back."}]}
function pandamium:impl/server_restart_countdown/main
