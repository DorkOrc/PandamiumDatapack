scoreboard players set <returned> variable 0
tag @s add source

execute if score @s discord matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s discord 1

execute if score @s discord matches ..1 if score @s staff_perms matches 1.. run function pandamium:utils/print_nearest_non_staff_player
execute if score @s discord matches ..1 store success score <returned> variable run tellraw @s [{"text":"[Discord] ","color":"dark_green"},{"nbt":"triggers.discord.discord_message","storage":"pandamium:dictionary","interpret":true}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s discord
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Discord]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"discord"}},"!"]]

execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"A staff member"'

execute if score <returned> variable matches 0 run tellraw @a[tag=target,limit=1] [{"text":"","color":"green"},{"text":"[Info] ","color":"blue"},["",{"nbt":"source","storage":"pandamium:temp","interpret":true}," sent you the ",{"text":"Discord","color":"aqua"}," invite link! ",{"nbt":"triggers.discord.discord_message","storage":"pandamium:dictionary","interpret":true}]]
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Discord]","color":"gold"},[{"text":" Sent ","color":"yellow"},{"selector":"@a[tag=target,limit=1]"}," the discord link!"]]
execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..},tag=!source] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," sent ",{"selector":"@a[tag=target,limit=1]","color":"gray"}," a Discord invite."]

tag @a remove target
tag @s remove source
scoreboard players reset @s discord
scoreboard players enable @s discord
