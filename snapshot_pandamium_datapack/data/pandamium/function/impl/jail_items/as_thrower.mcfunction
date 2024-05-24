scoreboard players set <player_exists> variable 1
tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":" threw an item in jail! ","color":"gray"},{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger staff_world set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"The Staff World","bold":true}]}}]

function pandamium:utils/get/username
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"text":"Dropped by ","color":"gray","italic":false},{"storage":"pandamium:temp","nbt":"username","color":"gray"}]'
