tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"accepted","color":"aqua"}," ",[{"selector":"@p"},"'s"]," TPA request."]
tellraw @p [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@s"}," ",{"text":"accepted","color":"aqua"}," your TPA request."]

execute unless score @p gameplay_perms matches 3.. run scoreboard players set @p tpa_cooldown 6000
tp @p @s

scoreboard players reset @s tpa_request
