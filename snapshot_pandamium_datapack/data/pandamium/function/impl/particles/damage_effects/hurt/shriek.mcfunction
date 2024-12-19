execute anchored eyes rotated 0 0 run particle minecraft:sculk_charge{roll:0f} ^ ^-0.5 ^ 0.2 0.5 0.2 0.05 3
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:shriek{delay:0} ^ ^-0.5 ^ 0.3 0.5 0.3 0.05 3
execute if score @s detect.take_damage matches 100.. run playsound minecraft:block.sculk_sensor.break player @a[distance=..16] ~ ~ ~ 0.25 2
