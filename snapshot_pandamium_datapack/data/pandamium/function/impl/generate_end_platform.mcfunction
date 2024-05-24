# arguments: x, y, z
# default: 100 48 0

$execute in the_end positioned $(x) $(y) $(z) run fill ~-2 ~ ~-2 ~2 ~ ~2 obsidian
$execute in the_end positioned $(x) $(y) $(z) run setblock ~ ~ ~ bedrock
$execute in the_end positioned $(x) $(y) $(z) run fill ~-2 ~1 ~-2 ~2 ~3 ~2 moving_piston
