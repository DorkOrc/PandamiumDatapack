function pandamium:misc/take/pick_chest/double
execute positioned as @s as @p[tag=take.target] run function pandamium:misc/take/inventory/move_items
kill
