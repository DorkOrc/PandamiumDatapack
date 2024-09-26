advancement revoke @s only pandamium:detect/place_bed_in_non_overworld_dimension

execute if entity @s[predicate=pandamium:in_dimension/the_end,x=0,y=64,z=0,distance=..100] run return 0

tellraw @s [{"text":"[Private Info]","color":"dark_red"},{"text":" Beds are currently disabled in this location!","color":"red"}]

execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:-10,max:10}}}} run fill ~-10 0 ~-10 ~10 ~10 ~10 air replace #minecraft:beds[part=foot]
execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:10,max:245}}}} run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #minecraft:beds[part=foot]
execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:245,max:265}}}} run fill ~-10 ~-10 ~-10 ~10 255 ~10 air replace #minecraft:beds[part=foot]
