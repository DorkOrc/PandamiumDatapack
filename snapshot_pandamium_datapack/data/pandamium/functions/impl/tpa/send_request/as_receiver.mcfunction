tag @s add receiver

function pandamium:impl/tpa/check_can_accept
execute if score <can_accept> variable matches 0 store success score <returned> variable run tellraw @a[tag=sender,limit=1] [{"text":"[TPA]","color":"dark_red"},[{"text":" You cannot teleport to ","color":"red"},{"selector":"@s","color":"red"}," currently!"]]

execute if score @s tpa_request.sender_id matches 1.. run tellraw @a[tag=sender,limit=1] [{"text":"[TPA] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" already has another TPA request!","color":"red"}]
execute if score @s tpa_request.sender_id matches 1.. run title @s actionbar [{"text":"","color":"green"},{"selector":"@a[tag=sender,limit=1]"}," wants to teleport to you!"]
execute if score @s tpa_request.sender_id matches 1.. run scoreboard players set <returned> variable 1

execute if score <returned> variable matches 0 run function pandamium:impl/tpa/send_request/do_send

tag @s remove receiver
