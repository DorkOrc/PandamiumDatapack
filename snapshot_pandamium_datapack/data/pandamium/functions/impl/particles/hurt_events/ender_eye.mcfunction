particle item ender_eye ~ ~0.8 ~ 0 0.5 0 0.1 5
execute if score @s detect.take_damage matches 100.. run particle portal ~ ~1 ~ 0.2 0.5 0.2 1 2
execute if score @s detect.take_damage matches 100.. run playsound entity.ender_eye.death player @a[distance=..16] ~ ~ ~ 0.25 2
