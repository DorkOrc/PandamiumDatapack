execute store success score <blocked> variable if score @s id = <source_id> variable
execute unless score @s id matches 2.. run scoreboard players set <blocked> variable 1
execute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[🎁]","color":"gray","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You cannot send a vote credit to\nthis player.","color":"gray"}]}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute if score <blocked> variable matches 1 run return 0

function pandamium:utils/get/session_data
tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},[{"nbt":"session_data.click_events.gift","storage":"pandamium:temp","interpret":true},{"text":"[🎁]","color":"#FF007F","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to send a vote credit to\n","color":"#FF007F"},{"selector":"@s","color":"#FF007F","bold":true}]}}]," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
