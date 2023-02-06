tellraw @a[tag=sender,limit=1] [{"text":"","color":"gray"},{"text":"[TPA]","color":"dark_gray"}," Your TPA request to ",{"selector":"@s","color":"gray"},{"text":" expired","bold":true},"!"]
tellraw @s [{"text":"","color":"gray"},{"text":"[TPA] ","color":"dark_gray"},{"selector":"@a[tag=sender,limit=1]","color":"gray"},"'s TPA request to you ",{"text":"expired","bold":true},"!"]

scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
