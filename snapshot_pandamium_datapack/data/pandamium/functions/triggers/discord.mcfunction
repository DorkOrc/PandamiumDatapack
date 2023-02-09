scoreboard players set <returned> variable 0
tag @s add source

data modify storage pandamium:temp discord_message set value '[[{"text":"","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"},"!"],[{"text":"\\n[Link Account] ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"IP: ","color":"dark_gray"},{"text":"pandamium.eu","color":"gray"},[{"text":"\\nClick to ","color":"aqua"},{"text":"Copy to Clipboard","bold":true}]]},"clickEvent":{"action":"copy_to_clipboard","value":"pandamium.eu"}},[{"text":"To ","color":"green"},{"text":"link your Discord account","color":"aqua"},", please join our ",{"text":"Release Server","color":"aqua"}," and run: ",{"text":"/discord","color":"gray"},{"text":" link","color":"aqua"}]]]'

execute if score @s discord matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s discord 1

execute if score @s discord matches ..1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player
execute if score @s discord matches ..1 store success score <returned> variable run tellraw @s [{"text":"[Discord] ","color":"dark_green"},{"nbt":"discord_message","storage":"pandamium:temp","interpret":true}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s discord
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Discord]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"discord"}},"!"]]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @p[tag=target] [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},["",{"selector":"@p[tag=source]"}," sent you the ",{"text":"Discord","color":"aqua"}," invite link! ",{"nbt":"discord_message","storage":"pandamium:temp","interpret":true}]]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @p[tag=target] [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},["A staff member sent you the ",{"text":"Discord","color":"aqua"}," invite link! ",{"nbt":"discord_message","storage":"pandamium:temp","interpret":true}]]
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Discord]","color":"gold"},[{"text":" Sent ","color":"yellow"},{"selector":"@p[tag=target]"}," the discord link!"]]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..},tag=!source] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," sent ",{"selector":"@p[tag=target]","color":"gray"}," a Discord invite."]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..},tag=!source] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},"A staff member sent ",{"selector":"@p[tag=target]","color":"gray"}," a Discord invite."]

tag @a remove target
tag @s remove source
scoreboard players reset @s discord
scoreboard players enable @s discord
