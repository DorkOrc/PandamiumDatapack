particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~0.8 ~ 0 0.5 0 1 5
particle item_slime ~ ~0.8 ~ 0 0.5 0 0.1 3
execute if score @s detect.take_damage matches 100.. run playsound entity.slime.hurt_small player @a[distance=..16] ~ ~ ~ 0.25 1
