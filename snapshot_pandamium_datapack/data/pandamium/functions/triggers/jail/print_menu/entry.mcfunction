execute store success score <blocked> variable if score @s id = <source_id> variable
execute unless score @s id matches 2.. run scoreboard players set <blocked> variable 1
execute if score @s jailed matches 1.. run scoreboard players set <blocked> variable 1
execute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[J]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"You cannot jail this player.","color":"gray"}]}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute if score <blocked> variable matches 1 run return 0

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[J]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to jail ","color":"dark_purple"},{"selector":"@s","color":"dark_purple","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger jail set $(id)"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
