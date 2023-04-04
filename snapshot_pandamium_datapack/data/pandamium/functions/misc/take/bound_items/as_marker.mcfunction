function pandamium:misc/take/pick_chest/single
execute positioned as @s as @p[tag=take.target] run function pandamium:misc/take/bound_items/move_items
kill
