tag @s add sender
tag @p[tag=running_trigger] add receiver
function pandamium:tpa/check_can_accept
tag @a remove sender
tag @a remove receiver

execute if score <can_accept> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot accept TPA requests currently! ","color":"red"},{"text":"[X]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Deny Request","color":"dark_red"}]}}]

execute if score <can_accept> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"accepted ","color":"aqua"},[{"selector":"@s"},"'s"]," TPA request!"]
execute if score <can_accept> variable matches 1 run tellraw @s [{"text":"[TPA] ","color":"blue"},{"selector":"@p[tag=running_trigger]"},{"text":" accepted","color":"aqua"},{"text":" your TPA request!","color":"green"}]

execute if score <can_accept> variable matches 1 at @p[tag=running_trigger] run function pandamium:misc/teleport/main
execute if score <can_accept> variable matches 1 if entity @s[gamemode=spectator] unless entity @s[x=-512,z=-512,dx=1024,dz=1024] unless score @s staff_perms matches 2.. run gamemode survival

execute if score <can_accept> variable matches 1 run scoreboard players reset @p[tag=running_trigger] tpa_request
