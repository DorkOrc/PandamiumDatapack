tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"denied","color":"aqua"}," ",[{"selector":"@p"},"'s"]," TPA request!"]
tellraw @p [{"text":"","color":"gray"},{"text":"[TPA]","color":"dark_gray"}," ",{"selector":"@s","color":"gray"}," ",{"text":"denied","bold":"true"}," your TPA request."]

scoreboard players reset @s tpa_request
