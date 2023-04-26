function pandamium:impl/take/pick_chest/single
execute positioned as @s as @a[tag=take.target,limit=1] run function pandamium:impl/take/enderchest/move_items
kill
