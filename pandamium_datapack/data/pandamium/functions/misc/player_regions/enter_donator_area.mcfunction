execute unless score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" Only donators are allowed in this area! You can check out our ","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":"discord server","bold":true}," for more information on how to donate!"]]
execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/teleport/spawn

advancement revoke @s only pandamium:detect/enter_donator_area
