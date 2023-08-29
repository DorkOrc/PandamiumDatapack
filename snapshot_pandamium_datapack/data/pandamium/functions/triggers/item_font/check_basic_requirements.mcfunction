execute if data storage pandamium:temp item.tag.display.Name run return 1

data remove storage pandamium:temp selected_lore
execute if score @s item_font matches -1 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.tag.display.Lore[0]
execute if score @s item_font matches -2 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.tag.display.Lore[1]
execute if score @s item_font matches -3 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.tag.display.Lore[2]
execute if score @s item_font matches -4 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.tag.display.Lore[3]
execute if data storage pandamium:temp selected_lore unless data storage pandamium:temp {selected_lore:'{"text":""}'} run return 1

return 0
