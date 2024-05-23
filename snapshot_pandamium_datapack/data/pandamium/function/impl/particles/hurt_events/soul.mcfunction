particle soul ~ ~1.3 ~ 0 0.1 0 0.05 1
execute if score @s detect.take_damage matches 100.. run particle soul ~ ~1.3 ~ 0 0.1 0 0.05 1
execute if score @s detect.take_damage matches 100.. run playsound entity.player.breath player @a[distance=..16] ~ ~ ~ 0.1 2
