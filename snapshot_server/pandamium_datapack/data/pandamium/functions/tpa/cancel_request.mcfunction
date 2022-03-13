# FROM pandamium:triggers/tpa_function
# AS [type=player,tag=running_trigger]

tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"canceled","color":"aqua"}," your TPA request to ",{"selector":"@s"},"!"]
tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"selector":"@p[tag=running_trigger]"},{"text":" canceled","color":"aqua"}," their TPA request!"]

scoreboard players reset @s tpa_request
