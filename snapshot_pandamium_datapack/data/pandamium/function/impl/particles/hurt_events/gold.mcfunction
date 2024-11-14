execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ^ ^-0.5 ^ 0 0.5 0 1 3
execute anchored eyes rotated 0 0 run particle minecraft:item{item:{id:"minecraft:gold_ingot"}} ^ ^-0.5 ^ 0 0.5 0 0.1 5
execute if score @s detect.take_damage matches 100.. run playsound minecraft:block.anvil.land player @a[distance=..16] ~ ~ ~ 0.05 2
