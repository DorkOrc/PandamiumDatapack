function pandamium:impl/custom_effects/remove/attribute_modifiers_logic with storage pandamium:temp custom_effect_entry.data.attribute_modifiers[-1]

data remove storage pandamium:temp custom_effect_entry.data.attribute_modifiers[-1]
execute if data storage pandamium:temp custom_effect_entry.data.attribute_modifiers[-1] run function pandamium:impl/custom_effects/remove/attribute_modifiers_loop
