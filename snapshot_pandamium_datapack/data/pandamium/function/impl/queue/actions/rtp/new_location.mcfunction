execute store result score <x> variable run random value 5000..25000
execute if predicate pandamium:coin_flip run scoreboard players operation <x> variable *= #-1 constant
execute store result storage pandamium:queue selected.entry.pos.x int 1 run scoreboard players get <x> variable

data modify storage pandamium:queue selected.entry.pos.y set value 0

execute store result score <z> variable run random value 5000..25000
execute if predicate pandamium:coin_flip run scoreboard players operation <z> variable *= #-1 constant
execute store result storage pandamium:queue selected.entry.pos.z int 1 run scoreboard players get <z> variable
