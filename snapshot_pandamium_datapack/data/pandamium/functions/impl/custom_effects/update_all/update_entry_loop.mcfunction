function pandamium:impl/custom_effects/update/main with storage pandamium:temp remaining_custom_effects[-1]

data remove storage pandamium:temp remaining_custom_effects[-1]
execute if data storage pandamium:temp remaining_custom_effects[0] run function pandamium:impl/custom_effects/update_all/update_entry_loop
