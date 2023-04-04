execute in pandamium:staff_world run function pandamium:misc/take/inventory/run
execute in pandamium:staff_world run function pandamium:misc/take/enderchest/run

function pandamium:misc/auto_actions/take/log_take

tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":"'s inventory and enderchest items were taken! ","color":"gray"},{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Staff World","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger staff_world"}}]
scoreboard players reset @s on_join.take_items
