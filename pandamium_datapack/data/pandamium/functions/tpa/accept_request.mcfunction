
execute as @p[tag=running_trigger] run function pandamium:tpa/check_can_accept

execute if score <can_accept> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You cannot accept TPA requests currently! ",{"text":"[X]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Deny Request","color":"dark_red"}]}}]

execute if score <can_accept> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"accepted","color":"aqua"}," ",[{"selector":"@s"},"'s"]," TPA request!"]
execute if score <can_accept> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@p[tag=running_trigger]"}," ",{"text":"accepted","color":"aqua"}," your TPA request!"]

execute if score <can_accept> variable matches 1 run tp @s @p[tag=running_trigger]

execute if score <can_accept> variable matches 1 run scoreboard players reset @p[tag=running_trigger] tpa_request
