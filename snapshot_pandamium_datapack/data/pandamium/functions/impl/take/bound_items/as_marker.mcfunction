function pandamium:impl/take/pick_chest/single
execute positioned as @s as @a[tag=take.target,limit=1] run function pandamium:impl/take/bound_items/move_items
kill
