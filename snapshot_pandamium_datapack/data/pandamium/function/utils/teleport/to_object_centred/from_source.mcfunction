# arguments: x, y, z, dimension, source

$data modify storage pandamium:templates teleport.source set value "$(source)"

$execute in $(dimension) positioned $(x) $(y) $(z) align xyz positioned ~.5 ~ ~.5 run function pandamium:impl/teleport/main
