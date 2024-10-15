execute unless entity @s run return 0

data modify storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes set value []
data modify storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes append from entity @s attributes[{modifiers:[{}]}]

execute unless data storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[0] run return 0

scoreboard players set <remove_all_attribute_modifiers.exclude_vanilla> variable 1
scoreboard players set <remove_all_attribute_modifiers.modifiers_removed> variable 0
function pandamium:impl/remove_all_attribute_modifiers/iterate_attributes
return run scoreboard players get <remove_all_attribute_modifiers.modifiers_removed> variable
