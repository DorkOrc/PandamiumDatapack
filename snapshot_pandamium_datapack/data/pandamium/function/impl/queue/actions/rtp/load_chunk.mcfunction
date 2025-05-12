# arguments: x, y, z

scoreboard players set <result> variable 0
$execute in minecraft:overworld positioned $(x) $(y) $(z) align xyz positioned ~0.5 ~ ~0.5 store result score <result> variable run function pandamium:impl/queue/actions/rtp/test_location
