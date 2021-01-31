item block 7 64 -7 container.0 copy entity @s weapon.mainhand

execute if data block 7 64 -7 Items[{Slot:0b}].tag.Lore run tellraw @s [{"text":"[Info]","color":"dark_green"},{"text":" Removed all lore from this item!","color":"green"}]

data remove block 7 64 -7 Items[0].tag.display.Lore
execute store result score <check_display> variable run data get block 7 64 -7 Items[0].tag.display
execute if score <check_display> variable matches 0 run data remove block 7 64 -7 Items[0].tag.display
item entity @s weapon.mainhand copy block 7 64 -7 container.0
