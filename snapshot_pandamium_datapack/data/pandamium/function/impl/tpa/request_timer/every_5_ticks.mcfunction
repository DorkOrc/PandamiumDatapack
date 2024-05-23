execute if score @s tpa_request.time matches 1.. run scoreboard players remove @s tpa_request.time 5

scoreboard players set <sender_exists> variable 0
scoreboard players operation <id> variable = @s tpa_request.sender_id
execute store success score <sender_exists> variable if entity @a[predicate=pandamium:matches_id,limit=1]
execute if score <sender_exists> variable matches 0 run function pandamium:impl/tpa/request_timer/cancel
execute if score <sender_exists> variable matches 1 if score @s tpa_request.time matches ..0 run function pandamium:impl/tpa/request_timer/end
