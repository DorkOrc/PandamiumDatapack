function pandamium:on_join
function pandamium:misc/give_guidebook

playsound entity.experience_orb.pickup player @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

scoreboard players add @a staff_perms 0
tellraw @a[scores={staff_perms=0}] [{"text":"[Server] ","color":"dark_blue"},[{"text":"Welcome to the server, ","color":"dark_aqua"},{"selector":"@s"},"! Have fun!"]]
tellraw @a[scores={staff_perms=1..}] [{"text":"[Server] ","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},[{"text":"Welcome to the server, ","color":"dark_aqua"},{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},"! Have fun!"]]

tellraw @s [{"text":"[Server] ","color":"dark_blue"},{"text":"Read the guidebook to get started and join the official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server for the full rules and announcements about the server! Click ","color":"green"},{"text":"[Here]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" to join!","color":"green"}]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"!"]
