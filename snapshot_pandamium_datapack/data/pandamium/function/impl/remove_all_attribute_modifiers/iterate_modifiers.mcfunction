# arguments: attribute, id

execute if score <remove_all_attribute_modifiers.exclude_vanilla> variable matches 1 run data modify storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".slice set value ""
execute if score <remove_all_attribute_modifiers.exclude_vanilla> variable matches 1 run data modify storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".slice set string storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[-1].id 0 10
execute if score <remove_all_attribute_modifiers.exclude_vanilla> variable matches 1 if data storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers"{slice:"minecraft:"} run return 0

$attribute @s $(attribute) modifier remove $(id)
scoreboard players add <remove_all_attribute_modifiers.modifiers_removed> variable 1

data remove storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[-1]
execute if data storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[0] run function pandamium:impl/remove_all_attribute_modifiers/iterate_modifiers with storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[-1]
