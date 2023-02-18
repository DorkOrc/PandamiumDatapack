particle dust 0.2 0.196 0.196 3 ~ ~3.2 ~ .6 0.1 .6 0 25
particle large_smoke ~ ~3.2 ~ .6 0.1 .6 0 2

particle ash ~ ~3.4 ~ .6 0 .6 0 1

particle falling_lava ~ ~3 ~ .5 0.2 .5 0 6

execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_1
execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 5 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_2
execute if score <storm> variable matches 100.. if score <lightning_bolt> variable matches 9 rotated ~ 0 run function pandamium:misc/particles/custom_trails/misc/lightning_bolt_3