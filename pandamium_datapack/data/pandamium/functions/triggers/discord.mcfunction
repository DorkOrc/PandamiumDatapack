tag @s add running_trigger

execute if score @s discord matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s discord 1
execute if score @s discord = @s id run scoreboard players set @s discord 1
execute if score @s discord matches 1 run tellraw @s [{"text":"[Discord]","color":"dark_green"}," ",[{"text":"","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"}],"!"]

execute if score @s discord matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s discord matches 2.. if score @s staff_perms matches 1.. as @a if score @s id = @p[tag=running_trigger] discord run scoreboard players set <player_exists> variable 1
execute if score @s discord matches 2.. if score @s staff_perms matches 1.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Discord]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score @s discord matches 2.. if score @s staff_perms matches 1.. as @a if score @s id = @p[tag=running_trigger] discord run tellraw @s [{"text":"","color":"green"},{"text":"[Discord]","color":"blue"},[{"text":" ","hoverEvent":{"action":"show_text","value":{"text":"Click here to join the Discord server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"selector":"@p[tag=running_trigger]"}," sent you the ",{"text":"Discord","color":"aqua"}," invite link! ",{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"}],"!"]
execute if score @s discord matches 2.. if score @s staff_perms matches 1.. as @a if score @s id = @p[tag=running_trigger] discord run tellraw @p[tag=running_trigger] [{"text":"[Discord]","color":"gold"},[{"text":" You sent ","color":"yellow"},{"selector":"@s"}," the discord link!"]]

tag @s remove running_trigger
scoreboard players reset @s discord
scoreboard players enable @s discord
