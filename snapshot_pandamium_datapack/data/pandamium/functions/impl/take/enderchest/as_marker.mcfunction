function pandamium:impl/take/pick_chest/single
execute positioned as @s as @p[tag=take.target] run function pandamium:impl/take/enderchest/move_items
kill
