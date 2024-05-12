# arguments: attribute, scale

$execute if data storage pandamium:dictionary default_player_attribute_bases."$(attribute)" run return run data get storage pandamium:dictionary default_player_attribute_bases."$(attribute)" $(scale)
$execute if data storage pandamium:dictionary default_player_attribute_bases."minecraft:$(attribute)" run return run data get storage pandamium:dictionary default_player_attribute_bases."minecraft:$(attribute)" $(scale)
return fail
