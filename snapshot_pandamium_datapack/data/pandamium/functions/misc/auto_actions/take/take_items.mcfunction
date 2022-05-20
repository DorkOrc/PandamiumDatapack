execute in pandamium:staff_world run function pandamium:misc/take/take_inventory
execute in pandamium:staff_world run function pandamium:misc/take/take_enderchest

function pandamium:misc/auto_actions/take/log_take

tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"trigger staff_world"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},{"selector":"@s","color":"gray"},{"text":"'s inventory and enderchest items were taken!","color":"gray"}]
scoreboard players reset @s on_join.take_items
