tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"canceled","color":"aqua"}," your TPA request to ",{"selector":"@p"},"."]
tellraw @p [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@s"}," ",{"text":"canceled","color":"aqua"}," their TPA request."]

scoreboard players reset @p tpa_request
