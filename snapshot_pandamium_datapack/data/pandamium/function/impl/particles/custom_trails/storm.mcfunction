# Normal Clouds
execute if score <storm> variable matches 0..500 run particle cloud ~ ~3 ~ 0.5 0 0.5 0 25
execute if score <storm> variable matches 0..500 run particle cloud ~ ~3.3 ~ 0.4 0 0.4 0 25

# Rain
execute if score <storm> variable matches 500.. run particle falling_water ~ ~3 ~ .5 0.2 .5 0 8

# Storm clouds
execute if score <storm> variable matches 500..749 run particle minecraft:dust{color:[0.514f,0.490f,0.490f],scale:3f} ~ ~3.2 ~ .6 .1 .6 0 25
execute if score <storm> variable matches 750..999 run particle minecraft:dust{color:[0.294f,0.286f,0.286f],scale:3f} ~ ~3.2 ~ .6 .1 .6 0 25
execute if score <storm> variable matches 1000.. run particle minecraft:dust{color:[0.200f,0.196f,0.196f],scale:3f} ~ ~3.2 ~ .6 .2 .6 0 25
