
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.10 copy entity @s armor.feet
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.feet replace air

execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.12 copy entity @s armor.legs
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.legs replace air

execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.14 copy entity @s armor.chest
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.chest replace air

execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.16 copy entity @s armor.head
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.head replace air

setblock -2 52 -1 air
setblock -2 52 -1 oak_sign[rotation=8]{Text1:'["",{"selector":"@p","color":"#3f3f3f"},"\'s Bound Items"]'}
data modify block -4 39 -1 CustomName set from block -2 52 -1 Text1
