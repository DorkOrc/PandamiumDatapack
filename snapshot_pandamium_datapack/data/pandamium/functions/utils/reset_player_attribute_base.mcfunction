# arguments: attribute

$data modify storage pandamium:templates macro.attribute__value set value {attribute:"$(attribute)",value:0.0d}
$execute if data storage pandamium:dictionary default_player_attribute_bases."$(attribute)" run data modify storage pandamium:templates macro.attribute__value.value set from storage pandamium:dictionary default_player_attribute_bases."$(attribute)"
$execute if data storage pandamium:dictionary default_player_attribute_bases."minecraft:$(attribute)" run data modify storage pandamium:templates macro.attribute__value.value set from storage pandamium:dictionary default_player_attribute_bases."minecraft:$(attribute)"

return run function pandamium:impl/reset_player_attribute_base/main with storage pandamium:templates macro.attribute__value
