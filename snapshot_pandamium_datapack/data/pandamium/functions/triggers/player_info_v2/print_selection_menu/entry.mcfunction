# arguments: id

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[👉]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see player info for\n","color":"yellow"},{"selector":"@s","color":"yellow","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set $(id)"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
