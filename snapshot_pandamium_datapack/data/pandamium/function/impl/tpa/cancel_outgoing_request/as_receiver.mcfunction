scoreboard players set <receiver_exists> variable 1

tag @s add receiver

scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time

tellraw @a[tag=sender,limit=1] [{"text":"","color":"green"},{"text":"[TPA]","color":"dark_green"},{"text":" Canceled","color":"aqua"}," your TPA request to ",{"selector":"@s"},"!"]
tellraw @s [{"text":"","color":"green"},{"text":"[TPA] ","color":"blue"},{"selector":"@a[tag=sender,limit=1]"},{"text":" canceled","color":"aqua"}," their TPA request!"]

tag @s remove receiver
