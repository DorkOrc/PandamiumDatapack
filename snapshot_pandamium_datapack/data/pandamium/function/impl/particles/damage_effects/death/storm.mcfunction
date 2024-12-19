execute anchored eyes rotated 0 0 run particle minecraft:dust{color:[0.200f,0.196f,0.196f],scale:3f} ^ ^1.8 ^ 0.8 0.2 0.8 0 120

execute anchored eyes rotated 0 0 run particle minecraft:falling_water ^ ^1 ^ .5 0 .5 0 20

function pandamium:impl/particles/custom_trails/misc/lightning_bolt_1
execute rotated ~120 ~ run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_2
execute rotated ~240 ~ run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_3

playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.25 2
