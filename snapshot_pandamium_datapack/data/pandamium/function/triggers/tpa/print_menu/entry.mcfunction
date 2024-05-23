# arguments: id

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},[{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to send a teleport request\nto ","color":"blue"},{"selector":"@s","color":"blue","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger tpa set $(id)"}}]," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
