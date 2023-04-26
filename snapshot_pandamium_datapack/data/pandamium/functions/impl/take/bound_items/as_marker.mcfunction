function pandamium:impl/take/pick_chest/single
execute positioned as @s as @p[tag=take.target] run function pandamium:impl/take/bound_items/move_items
kill
