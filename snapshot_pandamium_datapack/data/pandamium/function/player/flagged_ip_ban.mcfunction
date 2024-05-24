execute if score @s suspicious_ip matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Anti-Bot] ","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"yellow"},{"text":"Options Menu","bold":true}," to toggle ",{"text":"Anti-Bot Mode","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options"}},[{"selector":"@s","color":"gray"},"'s"],[{"text":" IP was flagged as suspicious, and they were ","color":"gray"},{"text":"automatically banned","bold":true},"!"]]
scoreboard players set @s suspicious_ip 2

# Uses entity due to MC-270837
execute in pandamium:staff_world run summon area_effect_cloud 0. 0 0. {Tags:["pandamium.player.flagged_ip_ban-ban_message"],CustomName:'"You were banned because bots are currently targeting this server and your account was flagged as suspicious! Unfortunately this system isn\'t perfect but necessary, please join our Discord and contact a member of staff to get unbanned: §b§ldiscord.pandamium.eu§r"'}
execute in pandamium:staff_world run ban @s[type=player] @e[type=area_effect_cloud,tag=pandamium.player.flagged_ip_ban-ban_message,x=0.0,y=0.0,z=0.0,distance=..0.01,limit=1]
