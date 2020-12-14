
data modify storage pandamium:take Inventory set from entity @s Inventory
data modify storage pandamium:take Inventory[].tag.Enchantments[{id:"binding_curse"}].id set value "minecraft:binding_curse"

execute if data storage pandamium:take Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block 7 64 0 container.10 copy entity @s armor.feet
execute if data storage pandamium:take Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.feet replace air

execute if data storage pandamium:take Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block 7 64 0 container.12 copy entity @s armor.legs
execute if data storage pandamium:take Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.legs replace air

execute if data storage pandamium:take Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block 7 64 0 container.14 copy entity @s armor.chest
execute if data storage pandamium:take Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.chest replace air

execute if data storage pandamium:take Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block 7 64 0 container.16 copy entity @s armor.head
execute if data storage pandamium:take Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.head replace air

setblock 7 64 -6 air
tag @s add selected_player
setblock 7 64 -6 oak_sign{Text1:'["",{"selector":"@p[tag=selected_player]","color":"#3f3f3f"},"\'s Bound Items"]'}
tag @s remove selected_player
data modify block 7 64 0 CustomName set from block 7 64 -6 Text1
