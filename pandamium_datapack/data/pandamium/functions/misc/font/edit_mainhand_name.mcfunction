data modify storage pandamium:temp Text set from storage pandamium:temp NBT.SelectedItem.tag.display.Name

# Apply font changes to Text (returns <text_changed> and <valid_option>)
execute in pandamium:staff_world run function pandamium:misc/font/do_edit

# Transfer Text to mainhand Name
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand pandamium:font/set_name_from_storage
