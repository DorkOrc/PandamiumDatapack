# Apply font changes to display.Name (returns <text_changed> and <valid_option>)

data modify storage pandamium:temp display set value {}
data modify storage pandamium:temp display set from storage pandamium:temp nbt.SelectedItem.tag.display

data modify storage pandamium:temp Text set from storage pandamium:temp display.Name
execute in pandamium:staff_world run function pandamium:impl/font/do_edit
data modify storage pandamium:temp display.Name set from storage pandamium:temp Text

# Update display
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand pandamium:font/replace_display_from_storage
