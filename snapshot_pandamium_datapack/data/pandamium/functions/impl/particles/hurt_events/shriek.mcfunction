particle sculk_charge 0 ~ ~0.8 ~ 0.2 0.5 0.2 0.05 3
execute if score @s detect.take_damage matches 100.. run particle sculk_charge_pop ~ ~0.8 ~ 0.3 0.5 0.3 0.05 3
execute if score @s detect.take_damage matches 100.. run playsound block.sculk_sensor.break player @a[distance=..16] ~ ~ ~ 0.25 2
