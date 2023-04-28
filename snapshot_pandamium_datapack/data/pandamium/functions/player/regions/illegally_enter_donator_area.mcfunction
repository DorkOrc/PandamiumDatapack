tellraw @s[scores={gameplay_perms=..5},gamemode=!spectator] [{"text":"[Info]","color":"dark_red"},[{"text":" Only donators are allowed in this area! You can check out our ","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":"discord server","bold":true}," for more information on how to donate!"]]
execute as @s[scores={gameplay_perms=..5},gamemode=!spectator] run function pandamium:misc/warp/spawn

advancement revoke @s only pandamium:detect/illegally_enter_donator_area
