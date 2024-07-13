# teleport to spawn
execute if entity @s[predicate=pandamium:in_spawn] run function pandamium:misc/warp/spawn

# give guidebook
loot give @s loot pandamium:items/custom/guidebook

# welcome messages
title @s title {"text":"🐼 ","font":"minecraft:uniform","extra":[{"text":"Welcome to Pandamium","bold":true}," 🐼"]}
title @s subtitle "Please read the Rules"
tellraw @a [{"text":"[Pandamium]","color":"blue"},[{"text":" Welcome to the server, ","color":"dark_aqua"},{"selector":"@s"},"! Have fun!"]]
tellraw @s [{"text":"[Private Info]","color":"blue","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},[{"text":" Use the ","color":"green"},{"text":"RTP","color":"aqua"}," at spawn and ",{"text":"read the guidebook","color":"aqua"}," to get started. ",{"text":"Click here to join our Discord Server","color":"aqua"}," for the full rules and announcements about the server!"]]
execute if score <month> global matches 6 if score <year> global matches 2024 run function pandamium:player/on_join/notices/pride_month_2024

# inform about name change if outside of spawn
execute unless entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"","color":"#ffadb1"},{"text":"[Name Change Notice]","color":"#FF424D"}," If you have changed your username since you last joined this server, you may need a staff member to transfer data such as homes, playtime, and reward credits to your new username. If so, please contact staff on our ",{"nbt":"hyperlink.discord","storage":"pandamium:dictionary","interpret":true}," server."]
execute unless entity @s[predicate=pandamium:in_spawn] run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info]","color":"dark_gray"}," ",{"selector":"@s","color":"gray"}," may have changed their username."]

# inform staff
tellraw @a[scores={staff_perms=1}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"! ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Spawn","bold":true}," in spectator mode"]},"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"}}]
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:player/on_join/print_id_and_teleport with storage pandamium:templates macro.id
execute as @a[scores={staff_perms=1..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

# prevent old player notices
scoreboard players set @s last_joined.year 2147483647

# ensure playtime_ticks is at least 1
scoreboard players add @s playtime_ticks 1

# set first join
scoreboard players operation @s first_joined.year = <year> global
scoreboard players operation @s first_joined.month = <month> global
scoreboard players operation @s first_joined.day = <day> global
scoreboard players operation @s first_joined.hour = <hour> global
