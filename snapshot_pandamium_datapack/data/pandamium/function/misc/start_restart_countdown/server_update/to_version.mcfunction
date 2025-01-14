# arguments: version

$data modify storage pandamium:global restart_reason set value {text:" so that the server can be backed up and updated to ",extra:[{"text":"Minecraft $(version)","color":"aqua"}]}
$data modify storage pandamium:global restart_kick_message set value {text:"The server has been temporarily closed so that it can be updated to ",extra:[{"text":"Minecraft $(version)","bold":true,"color":"aqua"},{text:"!\n\nKeep an eye on "},{"text":"#version-updates","color":"blue"},{text:" to know when you can join back."}]}
function pandamium:impl/server_restart_countdown/main
