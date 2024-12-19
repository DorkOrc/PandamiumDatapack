execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ^ ^-0.5 ^ 0 0.5 0 1 5
execute anchored eyes rotated 0 0 run particle minecraft:item_slime ^ ^-0.5 ^ 0 0.5 0 0.1 3
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.slime.hurt_small player @a[distance=..16] ~ ~ ~ 0.25 1
