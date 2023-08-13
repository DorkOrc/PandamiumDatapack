execute store success score <can_edit> variable if data storage pandamium:temp nbt.SelectedItem.tag.display.Name

data remove storage pandamium:temp SelectedLore
execute if score @s item_font matches -101 run data modify storage pandamium:temp SelectedLore set from storage pandamium:temp nbt.SelectedItem.tag.display.Lore[0]
execute if score @s item_font matches -102 run data modify storage pandamium:temp SelectedLore set from storage pandamium:temp nbt.SelectedItem.tag.display.Lore[1]
execute if score @s item_font matches -103 run data modify storage pandamium:temp SelectedLore set from storage pandamium:temp nbt.SelectedItem.tag.display.Lore[2]
execute if score @s item_font matches -104 run data modify storage pandamium:temp SelectedLore set from storage pandamium:temp nbt.SelectedItem.tag.display.Lore[3]

execute if data storage pandamium:temp SelectedLore unless data storage pandamium:temp {SelectedLore:'{"text":""}'} run scoreboard players set <can_edit> variable 1
