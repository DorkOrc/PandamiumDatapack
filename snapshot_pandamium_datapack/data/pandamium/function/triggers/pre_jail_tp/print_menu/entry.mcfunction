# arguments: id

$tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to\n","color":"blue"},{"selector":"@s","color":"blue","bold":true},"'s pre-jail\nlocation in spectator mode"]},"clickEvent":{"action":"run_command","value":"/trigger pre_jail_tp set $(id)"}}," ",{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
