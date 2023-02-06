tellraw @s [{"text":"[TPA]","color":"dark_gray"},{"text":" %sender%'s TPA request to you was canceled!","color":"gray"}]

scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
