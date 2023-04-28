function pandamium:impl/take/pick_chest/double
execute positioned as @s as @a[tag=take.target,limit=1] run function pandamium:impl/take/inventory/move_items
kill
