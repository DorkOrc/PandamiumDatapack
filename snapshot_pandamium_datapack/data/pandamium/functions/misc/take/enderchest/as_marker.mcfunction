function pandamium:misc/take/pick_chest/single
execute positioned as @s as @p[tag=take.target] run function pandamium:misc/take/enderchest/move_items
kill
