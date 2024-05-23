execute if entity @s[predicate=!pandamium:in_spawn] in the_nether positioned 0 128 0 rotated 180 0 run return run function pandamium:utils/teleport/here/from_source {source:"warp nether_roof"}

# else
execute in the_nether positioned 0 128 0 rotated 180 0 run function pandamium:utils/teleport/here
