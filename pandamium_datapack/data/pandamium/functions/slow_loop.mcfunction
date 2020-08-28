
execute as @e[type=piglin,nbt={IsBaby:1b}] run data merge entity @s {CanPickUpLoot:0b}

schedule function pandamium:slow_loop 5s
