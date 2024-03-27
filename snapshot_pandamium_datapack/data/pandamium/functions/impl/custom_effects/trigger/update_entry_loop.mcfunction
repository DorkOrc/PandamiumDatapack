function pandamium:impl/custom_effects/update/main with storage pandamium:temp triggered_custom_effects[-1]

data remove storage pandamium:temp triggered_custom_effects[-1]
execute if data storage pandamium:temp triggered_custom_effects[0] run function pandamium:impl/custom_effects/trigger/update_entry_loop
