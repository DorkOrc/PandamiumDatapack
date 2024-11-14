execute anchored eyes rotated 0 0 run particle minecraft:witch ^ ^-0.5 ^ 0 0.5 0 0.05 1
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:witch ^ ^-0.5 ^ 0 0.5 0 0.05 2
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.witch.hurt player @a[distance=..16] ~ ~ ~ 0.25 1
