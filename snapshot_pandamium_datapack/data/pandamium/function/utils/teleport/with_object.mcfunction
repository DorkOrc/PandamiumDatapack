# arguments: x, y, z, dimension

data remove storage pandamium:templates teleport.source

$execute in $(dimension) positioned 0. 0 0. positioned ~$(x) ~$(y) ~$(z) run function pandamium:impl/teleport/main
