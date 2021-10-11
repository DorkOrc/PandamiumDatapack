particle campfire_cosy_smoke ~ ~2.5 ~ 0.4 0.1 0.4 0 30

particle falling_water ~ ~2.5 ~ 0.3 0.2 0.3 0 10

execute rotated ~ 0 run particle electric_spark ^0.6 ^1 ^ 0.05 0.75 0.05 0 10
execute rotated ~ 0 run particle electric_spark ^-0.6 ^1 ^ 0.05 0.75 0.05 0 10

playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 1 2
