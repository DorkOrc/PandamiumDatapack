# Normal Clouds
execute if score <storm> variable matches 0..100 run particle cloud ~ ~3 ~ 0.5 0 0.5 0 25
execute if score <storm> variable matches 0..100 run particle cloud ~ ~3.3 ~ 0.4 0 0.4 0 25

# Rain
execute if score <storm> variable matches 100.. run particle falling_water ~ ~3 ~ .5 0.2 .5 0 8

# Storm clouds
execute if score <storm> variable matches 100..149 run particle dust 0.514 0.490 0.490 3 ~ ~3.2 ~ .6 .1 .6 0 25
execute if score <storm> variable matches 150..199 run particle dust 0.294 0.286 0.286 3 ~ ~3.2 ~ .6 .1 .6 0 25
execute if score <storm> variable matches 200.. run particle dust 0.200 0.196 0.196 3 ~ ~3.2 ~ .6 .2 .6 0 25

# Lightning Bolts
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_1
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_2
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_3
