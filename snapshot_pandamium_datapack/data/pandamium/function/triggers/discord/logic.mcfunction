execute if score @s discord matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s discord 1
execute if score @s discord = @s id run scoreboard players set @s discord 1

execute if score @s discord matches ..1 if score @s staff_perms matches 1.. run function pandamium:utils/print_nearest_non_staff_player
execute if score @s discord matches ..1 run return run tellraw @s [{"text":"[Discord] ","color":"dark_green"},{"nbt":"triggers.discord.discord_message","storage":"pandamium:dictionary","interpret":true}]

scoreboard players operation <id> variable = @s discord
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{"text":"[Discord]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"discord"}},"!"]]

function pandamium:utils/triggers/disable_player_suffixes
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"A staff member"'

tellraw @a[predicate=pandamium:matches_id,limit=1] [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},["",{"nbt":"source","storage":"pandamium:temp","interpret":true}," sent you the ",{"text":"Discord","color":"aqua"}," invite link! ",{"nbt":"triggers.discord.discord_message","storage":"pandamium:dictionary","interpret":true}]]
tellraw @s [{"text":"[Discord]","color":"gold"},[{"text":" Sent ","color":"yellow"},{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}," the discord link!"]]

tag @s add source
tellraw @a[scores={staff_perms=1..},tag=!source] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," sent ",{"selector":"@a[predicate=pandamium:matches_id,limit=1]","color":"gray"}," a Discord invite."]
tag @s remove source
