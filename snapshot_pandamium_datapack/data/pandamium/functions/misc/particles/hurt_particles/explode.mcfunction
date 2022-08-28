execute if score @s detect.take_damage matches 100.. run particle explosion ~ ~0.8 ~ 0.2 0.5 0.2 0 1
execute if score @s detect.take_damage matches 100.. run playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.25 2
