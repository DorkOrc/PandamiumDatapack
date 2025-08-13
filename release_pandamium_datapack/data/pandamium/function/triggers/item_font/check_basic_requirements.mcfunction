execute if data storage pandamium:temp item.components."minecraft:custom_name" run return 1

data remove storage pandamium:temp selected_lore
execute if score @s item_font matches -1 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.components."minecraft:lore"[0]
execute if score @s item_font matches -2 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.components."minecraft:lore"[1]
execute if score @s item_font matches -3 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.components."minecraft:lore"[2]
execute if score @s item_font matches -4 run data modify storage pandamium:temp selected_lore set from storage pandamium:temp item.components."minecraft:lore"[3]
execute if data storage pandamium:temp selected_lore unless data storage pandamium:temp {selected_lore:'""'} run return 1

return 0
