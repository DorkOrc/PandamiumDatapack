function pandamium:on_join
function pandamium:misc/give_guidebook

playsound entity.experience_orb.pickup master @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

tellraw @a[scores={staff_perms=0}] [{"text":"[Server] ","color":"dark_blue"},[{"text":"Welcome to the server, ","color":"dark_aqua"},{"selector":"@s"},"! Have fun!"]]
tellraw @a[scores={staff_perms=1..}] [{"text":"[Server] ","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}},[{"text":"Welcome to the server, ","color":"dark_aqua"},{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}},"! Have fun!"]]

tellraw @s [{"text":"[Server]","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},[{"text":" Use the ","color":"green"},{"text":"RTP","color":"aqua"}," at spawn and ",{"text":"read the guidebook","color":"aqua"}," to get started. ",{"text":"Click here to join our Discord Server","color":"aqua"}," for the full rules and announcements about the server!"]]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"!"]