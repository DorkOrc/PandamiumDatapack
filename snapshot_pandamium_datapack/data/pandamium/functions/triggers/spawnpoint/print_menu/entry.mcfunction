# arguments: id

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to\n","color":"blue"},{"selector":"@s","color":"blue","bold":true}," in spectator\nmode"]},"clickEvent":{"action":"run_command","value":"/trigger tp set $(id)"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
