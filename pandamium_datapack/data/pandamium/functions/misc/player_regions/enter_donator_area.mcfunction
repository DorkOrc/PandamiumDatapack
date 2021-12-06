execute unless score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" Only donators are allowed in this area! You can check out our ","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":"discord server","bold":true}," for more information on how to donate!"]]
execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/teleport/spawn

advancement revoke @s only pandamium:enter_donator_area
