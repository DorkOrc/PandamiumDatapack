data modify storage pandamium:take Inventory set from entity @s Inventory
data modify storage pandamium:take Inventory[].tag.Enchantments[{id:"binding_curse"}].id set value "minecraft:binding_curse"

execute if data storage pandamium:take Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace block 7 64 0 container.10 from entity @s armor.feet
execute if data storage pandamium:take Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace entity @s armor.feet with air

execute if data storage pandamium:take Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace block 7 64 0 container.12 from entity @s armor.legs
execute if data storage pandamium:take Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace entity @s armor.legs with air

execute if data storage pandamium:take Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace block 7 64 0 container.14 from entity @s armor.chest
execute if data storage pandamium:take Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace entity @s armor.chest with air

execute if data storage pandamium:take Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace block 7 64 0 container.16 from entity @s armor.head
execute if data storage pandamium:take Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item replace entity @s armor.head with air

setblock 7 64 -6 air
tag @s add selected_player
setblock 7 64 -6 oak_sign{Text1:'["",{"selector":"@p[tag=selected_player]","color":"#3f3f3f"},"\'s Bound Items"]'}
tag @s remove selected_player
data modify block 7 64 0 CustomName set from block 7 64 -6 Text1
