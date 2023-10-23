# arguments: id

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"text":"[🎁]","color":"#FF007F","hoverEvent":{"action":"show_text","contents":[{"text":"Click to gift a reward credit to\n","color":"#FF007F"},{"selector":"@s","color":"#FF007F","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger gift set $(id)"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
