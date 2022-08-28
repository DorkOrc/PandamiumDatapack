particle small_flame ~ ~0.8 ~ 0.1 0.5 0.1 0.01 3
particle smoke ~ ~0.8 ~ 0 0.5 0 0.05 1
execute if score @s detect.take_damage matches 100.. run playsound entity.player.hurt_on_fire player @a[distance=..16] ~ ~ ~ 0.25 2
