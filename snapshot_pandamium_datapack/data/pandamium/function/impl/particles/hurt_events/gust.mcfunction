execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:gust ^ ^-0.5 ^ 0.2 0.5 0.2 0 1
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.wind_charge.wind_burst player @a[distance=..16] ~ ~ ~ 0.25 2
