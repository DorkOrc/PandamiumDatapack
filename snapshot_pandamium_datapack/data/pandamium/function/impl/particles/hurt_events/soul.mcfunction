execute anchored eyes rotated 0 0 run particle minecraft:soul ^ ^ ^ 0 0.1 0 0.05 1
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:soul ^ ^ ^ 0.1 0.1 0.1 0.05 2
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.player.breath player @a[distance=..16] ~ ~ ~ 0.1 2
