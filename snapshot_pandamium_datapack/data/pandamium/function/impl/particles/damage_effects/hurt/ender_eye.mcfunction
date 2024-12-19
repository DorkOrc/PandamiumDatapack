execute anchored eyes rotated 0 0 run particle minecraft:item{item:{id:"minecraft:ender_eye"}} ^ ^-0.5 ^ 0 0.5 0 0.1 5
execute if score @s detect.take_damage matches 100.. anchored eyes rotated 0 0 run particle minecraft:portal ^ ^-0.5 ^ 0.2 0.5 0.2 1 2
execute if score @s detect.take_damage matches 100.. run playsound minecraft:entity.ender_eye.death player @a[distance=..16] ~ ~ ~ 0.25 2
