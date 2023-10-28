# arguments: id

$tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"! ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to\n","color":"blue"},{"selector":"@s","color":"blue","bold":true}," in spectator\nmode"]},"clickEvent":{"action":"run_command","value":"/trigger tp set $(id)"}}]
