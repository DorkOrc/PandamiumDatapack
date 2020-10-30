function pandamium:on_join
function pandamium:misc/give_guidebook

playsound minecraft:entity.experience_orb.pickup player @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

tellraw @a [{"text":"[Server] ","color":"dark_blue"},{"text":"Welcome to the server ","color":"dark_aqua"},{"selector":"@s"},{"text":"! Have fun!","color":"dark_aqua"}]

tellraw @s [{"text":"[Server] ","color":"dark_blue"},{"text":"Read the guidebook to get started and join the official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server for the full rules and announcements about the server! Click ","color":"green"},{"text":"[here]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" to join!","color":"green"}]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",[{"selector":"@s"},"'s"]," id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"!"]
