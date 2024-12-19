execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:moss_block"}} ^ ^-0.5 ^ 0 0.5 0 1 3
execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ^ ^-0.5 ^ 0.1 0.5 0.1 1 5
execute if score @s detect.take_damage matches 100.. run playsound minecraft:block.moss.break player @a[distance=..16] ~ ~ ~ 0.25 2
