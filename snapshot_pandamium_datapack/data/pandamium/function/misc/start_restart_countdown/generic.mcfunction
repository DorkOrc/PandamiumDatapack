data modify storage pandamium:global restart_reason set value '""'
data modify storage pandamium:global restart_kick_message set value '["The server has been temporarily closed, but should be back up soon!\\n\\nKeep an eye on ",{"text":"#announcements","color":"blue"}," or ",{"text":"#snapshot-ingame-chat","color":"blue"}," to know when you can join back."]'
function pandamium:impl/server_restart_countdown/main
