execute store success score <blocked> variable if score @s id = <source_id> variable
execute unless score @s id matches 2.. run scoreboard players set <blocked> variable 1
execute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[🎁]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"You cannot gift a reward credit to\nthis player.","color":"gray"}]}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute if score <blocked> variable matches 1 run return 0

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/gift/print_menu/entry with storage pandamium:templates macro.id
