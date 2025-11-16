# Dummy Blocks
function pandamium:startup/place_dummy_blocks

# Disable tnt
execute as @e[type=#pandamium:tnt] at @s run function pandamium:misc/defuse_tnt

# Queued actions
function pandamium:impl/queue/tick

# set waypoint transmission restrictions
execute as @a run attribute @s minecraft:waypoint_transmit_range base set 100
execute as @a run attribute @s minecraft:waypoint_receive_range base set 100

# Slow loop
scoreboard players add <main_loop> global 1
scoreboard players operation <main_loop> global %= #5 constant
execute if score <main_loop> global matches 0 run function pandamium:main_loop
