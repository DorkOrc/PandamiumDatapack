particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~0.8 ~ 0 0.5 0 1 3
particle minecraft:item{item:{id:"minecraft:diamond"}} ~ ~0.8 ~ 0 0.5 0 0.1 5
execute if score @s detect.take_damage matches 100.. run playsound block.glass.break player @a[distance=..16] ~ ~ ~ 0.25 2
