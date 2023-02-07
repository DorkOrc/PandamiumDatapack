tag @s add receiver

scoreboard players reset @s tpa_request.sender_id

tellraw @a[tag=sender,limit=1] [{"text":"","color":"green"},{"text":"[TPA]","color":"dark_green"}," You ",{"text":"canceled","color":"aqua"}," your TPA request to ",{"selector":"@s"},"!"]
tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"selector":"@a[tag=sender,limit=1]"},{"text":" canceled","color":"aqua"}," their TPA request to you!"]
scoreboard players set <returned> variable 1

tag @s remove receiver
