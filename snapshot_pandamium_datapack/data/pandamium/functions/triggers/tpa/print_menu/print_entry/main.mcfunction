execute store success score <blocked> variable if score @s disable_tpa_requests matches 1
execute if score @s disable_tpa_requests matches 2 if score <source_is_guest> variable matches 1 run scoreboard players set <blocked> variable 1
execute if score @s id = <source_id> variable run scoreboard players set <blocked> variable 1
execute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[→]","color":"gray","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You cannot send a teleport\nrequest to this player.","color":"gray"}]}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute if score <blocked> variable matches 1 run return 0

execute if score @s session_id matches 1..25 run function pandamium:triggers/tpa/print_menu/print_entry/tree/1..25
execute if score @s session_id matches 26..50 run function pandamium:triggers/tpa/print_menu/print_entry/tree/26..50
