# arguments: x, y, z, slot

$execute in pandamium:staff_world unless block $(x) $(y) $(z) barrel run setblock $(x) $(y) $(z) barrel{} strict
$execute in pandamium:staff_world run item replace block $(x) $(y) $(z) container.$(slot) with air
