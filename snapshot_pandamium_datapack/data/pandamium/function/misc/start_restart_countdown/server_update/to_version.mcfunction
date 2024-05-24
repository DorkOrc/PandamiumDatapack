# arguments: version

$data modify storage pandamium:global restart_reason set value '[" so that the server can be backed up and updated to ",{"text":"Minecraft $(version)","color":"aqua"}]'
$data modify storage pandamium:global restart_kick_message set value '["The server has been temporarily closed so that it can be updated to ",{"text":"Minecraft $(version)","bold":true,"color":"aqua"},"!\\n\\nKeep an eye on ",{"text":"#version-updates","color":"blue"}," to know when you can join back."]'
function pandamium:impl/server_restart_countdown/main
