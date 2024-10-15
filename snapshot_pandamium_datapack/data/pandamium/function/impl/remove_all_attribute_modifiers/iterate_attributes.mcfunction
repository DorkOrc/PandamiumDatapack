data modify storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[].attribute set from storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].id

function pandamium:impl/remove_all_attribute_modifiers/iterate_modifiers with storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1].modifiers[-1]

data remove storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[-1]
execute if data storage pandamium:local functions."pandamium:utils/remove_all_attribute_modifiers".attributes[0] run function pandamium:impl/remove_all_attribute_modifiers/iterate_attributes
