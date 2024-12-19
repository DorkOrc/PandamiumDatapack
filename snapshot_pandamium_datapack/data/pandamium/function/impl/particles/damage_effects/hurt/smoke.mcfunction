execute anchored eyes rotated 0 0 run particle minecraft:smoke ^ ^-0.5 ^ 0.1 0.5 0.1 0.05 3
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:large_smoke ^ ^-0.5 ^ 0.1 0.5 0.1 0.05 1
execute if score @s detect.take_damage matches 100.. run playsound minecraft:block.fire.extinguish player @a[distance=..16] ~ ~ ~ 0.05 2
