execute anchored eyes rotated 0 0 run particle minecraft:snowflake ^ ^-0.5 ^ 0.1 0 0.1 0.05 2
execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ^ ^-0.5 ^ 0 0.5 0 0.5 2

execute if score @s detect.take_damage matches 70.. anchored eyes rotated 0 0 run particle minecraft:snowflake ^ ^-0.5 ^ 0.1 0 0.1 0.05 2
execute if score @s detect.take_damage matches 70.. anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ^ ^-0.5 ^ 0 0.5 0 0.5 2

execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle snowflake ^ ^-0.5 ^ 0.3 0.5 0.3 0 3
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ^ ^-0.5 ^ 0 0.5 0 0.5 2
execute if score @s detect.take_damage matches 100.. run playsound entity.player.hurt_freeze player @a[distance=..16] ~ ~ ~ 0.25 2
