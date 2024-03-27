function pandamium:impl/custom_effects/remove/main with storage pandamium:temp remaining_custom_effects[-1]

data remove storage pandamium:temp remaining_custom_effects[-1]
execute if data storage pandamium:temp remaining_custom_effects[0] run function pandamium:impl/custom_effects/remove_all_from_milk/remove_entry_loop
