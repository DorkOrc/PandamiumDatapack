execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:electric_spark ^ ^-1 ^ 0.4 0.4 0.4 1 10
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.1 2
