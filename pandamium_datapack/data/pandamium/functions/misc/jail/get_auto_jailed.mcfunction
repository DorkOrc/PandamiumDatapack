tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," was automatically jailed for ",{"nbt":"reason","storage":"pandamium:jail","bold":true},"!"]
tellraw @s [{"text":"[Info] ","color":"dark_gray"},[{"text":"You were automatically jailed for ","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"nbt":"reason","storage":"pandamium:jail","bold":true},"! Feel free to contact an online staff member with ",{"text":"/msg","color":"yellow"}," or open a ticket at our ",{"text":"Discord","bold":true,"color":"#5865F2"}," server."]]

function pandamium:misc/get_jailed
scoreboard players set @s jailed 2
scoreboard players set @s cheater 1

execute unless entity @p[scores={staff_perms=1..}] run function pandamium:misc/jail/log_auto_jail
