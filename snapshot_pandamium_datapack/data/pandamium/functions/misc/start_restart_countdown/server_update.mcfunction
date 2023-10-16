data modify storage pandamium:global restart_reason set value '" so that the server can be backed up and updated to the latest Minecraft version"'
data modify storage pandamium:global restart_kick_message set value '["The server has been temporarily closed so that it can be updated to the latest Minecraft version!\\n\\nKeep an eye on ",{"text":"#announcements","color":"blue"}," to know when you can join back."]'
function pandamium:impl/server_restart_countdown/main
