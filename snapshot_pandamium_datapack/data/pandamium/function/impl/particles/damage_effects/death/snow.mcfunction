execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ^ ^-0.5 ^ 0.1 0.5 0.1 1 20
execute anchored eyes rotated 0 0 run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ^ ^-0.5 ^ 0.1 0.5 0.1 1 15
execute anchored eyes rotated 0 0 run particle minecraft:snowflake ^ ^-0.5 ^ 0.3 0.5 0.3 0 15
playsound minecraft:entity.player.hurt_freeze player @a[distance=..16] ~ ~ ~ 0.25 2
playsound minecraft:block.glass.break player @a[distance=..16] ~ ~ ~ 0.25 2
