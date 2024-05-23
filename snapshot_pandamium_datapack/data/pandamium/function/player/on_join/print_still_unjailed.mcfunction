# arguments: id

# inform jailee
tellraw @s [{"text":"[Private Info]","color":"dark_purple"},{"text":" You are jailed; please contact a staff member.","color":"light_purple"}]
title @s subtitle {"text":"Please contact staff to be released","color":"light_purple"}
title @s title {"text":"You are Jailed","color":"dark_purple"}

# inform online staff
$tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":" is still jailed! ","color":"gray"},{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}," ",{"text":"[U]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to unjail ","color":"dark_purple"},{"selector":"@s","color":"dark_purple","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger unjail set $(id)"}}]
