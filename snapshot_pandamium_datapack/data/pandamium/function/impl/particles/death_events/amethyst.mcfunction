execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:amethyst_block"}} ^ ^-0.5 ^ 0.1 0.5 0.1 1 25
execute anchored eyes rotated 0 0 run particle minecraft:item{item:{id:"minecraft:amethyst_shard"}} ^ ^-0.5 ^ 0.1 0.5 0.1 0.1 25
playsound minecraft:block.amethyst_block.break player @a[distance=..16] ~ ~ ~ 0.25 2
playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 0.25 2
