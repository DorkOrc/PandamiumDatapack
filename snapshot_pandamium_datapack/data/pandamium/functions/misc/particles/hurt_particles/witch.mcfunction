particle witch ~ ~0.8 ~ 0 0.5 0 0.05 1
execute if score @s detect.take_damage matches 100.. run particle witch ~ ~0.8 ~ 0 0.5 0 0.05 2
execute if score @s detect.take_damage matches 100.. run playsound entity.witch.hurt player @a[distance=..16] ~ ~ ~ 0.25 1
