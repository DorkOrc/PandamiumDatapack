$data modify storage pandamium:global restart_reason set value '" so that the server can be backed up and updated to Minecraft $(version)"'
$data modify storage pandamium:global restart_kick_message set value '["The server has been temporarily closed so that it can be updated to Minecraft $(version)!\\n\\nKeep an eye on ",{"text":"#announcements","color":"blue"}," to know when you can join back."]'
scoreboard players set <seconds_until_restart> global 300
function pandamium:impl/server_restart_countdown/every_second_until_restart
