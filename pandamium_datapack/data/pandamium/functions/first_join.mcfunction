function pandamium:on_join
function pandamium:misc/give_guidebook

execute as @a[scores={staff_perms=1..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2

tellraw @a [{"text":"[Server] ","color":"dark_blue"},{"text":"Welcome to the server ","color":"dark_aqua"},{"selector":"@s"},{"text":"! Have fun!","color":"dark_aqua"}]

tellraw @s [{"text":"[Server] ","color":"dark_blue"},{"text":"Read the guidebook to get started and join the official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server for the full rules and announcements about the server! Click ","color":"green"},{"text":"[here]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" to join!","color":"green"}]

tellraw @s [{"text":"Your id is ","color":"gray","italic":true},{"score":{"objective":"id","name":"@s"}},"."]
tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","italic":true},{"selector":"@s"},{"text":"'s id is ","color":"gray","italic":true},{"score":{"objective":"id","name":"@s"}},"."]
