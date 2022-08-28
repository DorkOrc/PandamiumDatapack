particle smoke ~ ~0.8 ~ 0.1 0.5 0.1 0.05 3
execute if score @s detect.take_damage matches 100.. run particle large_smoke ~ ~0.8 ~ 0.1 0.5 0.1 0.05 1
execute if score @s detect.take_damage matches 100.. run playsound block.fire.extinguish player @a[distance=..16] ~ ~ ~ 0.05 2
