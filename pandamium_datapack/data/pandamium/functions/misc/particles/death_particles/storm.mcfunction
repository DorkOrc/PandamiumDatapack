particle dust 0.200 0.196 0.196 3 ~ ~3.2 ~ .8 .2 .8 0 120

particle falling_water ~ ~2.6 ~ .5 0 .5 0 20

function pandamium:misc/particles/misc/lightning_bolt_1
execute rotated ~120 ~ run function pandamium:misc/particles/misc/lightning_bolt_2
execute rotated ~240 ~ run function pandamium:misc/particles/misc/lightning_bolt_3

playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 1 2
