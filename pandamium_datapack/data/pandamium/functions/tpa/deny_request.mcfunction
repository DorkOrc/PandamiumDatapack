tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"denied","color":"aqua"}," ",[{"selector":"@p"},"'s"]," TPA request!"]
tellraw @p [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@s"}," ",{"text":"denied","color":"aqua"}," your TPA request!"]

scoreboard players reset @s tpa_request
