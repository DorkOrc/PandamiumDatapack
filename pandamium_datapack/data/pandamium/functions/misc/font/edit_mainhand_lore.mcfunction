execute store success score <valid_option> variable if score <font> variable matches 101..104

scoreboard players set <text_changed> variable 0

# Add dummy data
execute if score <font> variable matches 101..104 unless data storage pandamium:temp NBT.SelectedItem.tag.display.Lore[0] run data modify storage pandamium:temp NBT.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 102..104 unless data storage pandamium:temp NBT.SelectedItem.tag.display.Lore[1] run data modify storage pandamium:temp NBT.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 103..104 unless data storage pandamium:temp NBT.SelectedItem.tag.display.Lore[2] run data modify storage pandamium:temp NBT.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 104..104 unless data storage pandamium:temp NBT.SelectedItem.tag.display.Lore[3] run data modify storage pandamium:temp NBT.SelectedItem.tag.display.Lore append value '{"text":""}'
execute unless data storage pandamium:temp NBT.SelectedItem.tag.display.Name run data modify storage pandamium:temp NBT.SelectedItem.tag.display.Name set value '{"text":""}'

data modify storage pandamium:temp display set value {}
data modify storage pandamium:temp display set from storage pandamium:temp NBT.SelectedItem.tag.display

# Make changes
execute if score <font> variable matches 101 run function pandamium:misc/font/edit_lore/line_1
execute if score <font> variable matches 102 run function pandamium:misc/font/edit_lore/line_2
execute if score <font> variable matches 103 run function pandamium:misc/font/edit_lore/line_3
execute if score <font> variable matches 104 run function pandamium:misc/font/edit_lore/line_4

# Remove dummy data where necessary
execute if data storage pandamium:temp display{Name:'{"text":""}'} run data remove storage pandamium:temp display.Name
function pandamium:misc/font/edit_lore/trim

# Update display
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand pandamium:font/replace_display_from_storage
