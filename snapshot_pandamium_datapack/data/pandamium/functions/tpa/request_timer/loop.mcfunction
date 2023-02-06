execute if score @s tpa_request.time matches 1.. run scoreboard players remove @s tpa_request.time 5

scoreboard players set <sender_exists> variable 0
scoreboard player operation <sender_id> variable = @s tpa_request.sender_id
execute as @a if score @s id = <sender_id> variable store success score <sender_exists> variable store success score <sender_exists> variable run tag @s add sender
execute if score <sender_exists> variable matches 0 run function pandamium:tpa/request_timer/cancel
execute if score <sender_exists> variable matches 1 if score @s tpa_request.time matches ..0 run function pandamium:tpa/request_timer/end

tag @a remove sender
