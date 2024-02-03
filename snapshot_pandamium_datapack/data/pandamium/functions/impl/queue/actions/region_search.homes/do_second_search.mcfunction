# arguments: x, y, z, dimension

$execute in $(dimension) unless dimension minecraft:overworld unless dimension minecraft:the_nether run return 0

$execute in $(dimension) if dimension minecraft:overworld positioned $(x) $(y) $(z) in minecraft:the_nether run function pandamium:impl/queue/actions/region_search.homes/initialise
$execute in $(dimension) if dimension minecraft:the_nether positioned $(x) $(y) $(z) in minecraft:overworld run function pandamium:impl/queue/actions/region_search.homes/initialise
data modify storage pandamium:queue entries[-1] merge value {child:1b,wait:2}
