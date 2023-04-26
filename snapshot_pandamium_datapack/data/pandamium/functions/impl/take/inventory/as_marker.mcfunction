function pandamium:impl/take/pick_chest/double
execute positioned as @s as @p[tag=take.target] run function pandamium:impl/take/inventory/move_items
kill
