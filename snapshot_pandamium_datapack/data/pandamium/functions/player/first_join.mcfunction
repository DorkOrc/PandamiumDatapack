function pandamium:on_join
function pandamium:misc/give_guidebook

execute as @a[scores={staff_perms=1..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

tellraw @a [{"text":"[Server]","color":"blue"},[{"text":" Welcome to the server, ","color":"dark_aqua"},{"selector":"@s"},"! Have fun!"]]
tellraw @s [{"text":"[Info]","color":"blue","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},[{"text":" Use the ","color":"green"},{"text":"RTP","color":"aqua"}," at spawn and ",{"text":"read the guidebook","color":"aqua"}," to get started. ",{"text":"Click here to join our Discord Server","color":"aqua"}," for the full rules and announcements about the server!"]]

execute if entity @a[scores={staff_perms=2..},limit=1] run function pandamium:utils/get/session_data
tellraw @a[scores={staff_perms=1}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"! ",{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Spawn","bold":true}," in spectator mode"]},"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"}}]
tellraw @a[scores={staff_perms=2..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"! ",[{"nbt":"session_data.click_events.tp","storage":"pandamium:temp","interpret":true},{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to\n","color":"blue"},{"selector":"@s","color":"blue","bold":true}," in spectator\nmode"]}}]]
