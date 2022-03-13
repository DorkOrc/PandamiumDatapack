# FROM pandamium:triggers/tpa_function
# AS [type=player,tag=running_trigger]

tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"denied ","color":"aqua"},[{"selector":"@s"},"'s"]," TPA request!"]
tellraw @s [{"text":"","color":"gray"},{"text":"[TPA] ","color":"dark_gray"},{"selector":"@p[tag=running_trigger]","color":"gray"},{"text":" denied","bold":true}," your TPA request!"]

scoreboard players reset @p[tag=running_trigger] tpa_request
