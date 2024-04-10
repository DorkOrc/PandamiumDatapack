particle minecraft:block{block_state:{Name:"minecraft:amethyst_block"}} ~ ~0.8 ~ 0 0.5 0 1 3
particle minecraft:item{item:{id:"minecraft:amethyst_shard"}} ~ ~0.8 ~ 0 0.5 0 0.1 5
execute if score @s detect.take_damage matches 100.. run playsound block.amethyst_block.break player @a[distance=..16] ~ ~ ~ 0.25 2
