tellraw @p[tag=doing_trigger] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"accepted","color":"aqua"}," ",[{"selector":"@s"},"'s"]," TPA request!"]
tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@p[tag=doing_trigger]"}," ",{"text":"accepted","color":"aqua"}," your TPA request!"]

tp @s @p[tag=doing_trigger]

scoreboard players reset @p[tag=doing_trigger] tpa_request
