particle minecraft:dust{color:[0.200f,0.196f,0.196f],scale:3f} ~ ~3.2 ~ .8 .2 .8 0 120

particle falling_water ~ ~2.6 ~ .5 0 .5 0 20

function pandamium:impl/particles/misc/lightning_bolt_1
execute rotated ~120 ~ run function pandamium:impl/particles/misc/lightning_bolt_2
execute rotated ~240 ~ run function pandamium:impl/particles/misc/lightning_bolt_3

playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.25 2
