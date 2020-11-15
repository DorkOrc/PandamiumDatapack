tag @s add doing_trigger

execute if score @p[tag=doing_trigger] discord matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @p[tag=doing_trigger] discord 1
execute if score @p[tag=doing_trigger] discord = @p[tag=doing_trigger] id if score @s staff_perms matches 1.. run scoreboard players set @p[tag=doing_trigger] discord 1
execute if score @p[tag=doing_trigger] discord matches 1 run tellraw @p[tag=doing_trigger] [{"text":"","color":"green"},{"text":"[Discord]","color":"dark_green"}," ",[{"text":"","hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"}],"!"]

execute if score @p[tag=doing_trigger] discord matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. run scoreboard players set <player_exists> variable 0
execute if score @p[tag=doing_trigger] discord matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. as @a if score @s id = @p[tag=doing_trigger] discord run scoreboard players set <player_exists> variable 1
execute if score @p[tag=doing_trigger] discord matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. if score <player_exists> variable matches 0 run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[Discord]","color":"dark_red"}," No player found!"]

execute if score @p[tag=doing_trigger] discord matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. as @a if score @s id = @p[tag=doing_trigger] discord run tellraw @s [{"text":"","color":"green"},{"text":"[Discord]","color":"blue"}," ",[{"text":"","hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"}],"!"]
execute if score @p[tag=doing_trigger] discord matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. as @a if score @s id = @p[tag=doing_trigger] discord run tellraw @p[tag=doing_trigger] [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," You sent ",{"selector":"@s"}," the discord link!"]

tag @s remove doing_trigger
scoreboard players reset @s discord
scoreboard players enable @s discord
