
setblock -4 39 -1 minecraft:chest[facing=east,type=single,waterlogged=false]
data modify block -4 39 -1 Items set value []

execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.10 copy entity @s armor.feet
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.feet replace air

execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.12 copy entity @s armor.legs
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.legs replace air

execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.14 copy entity @s armor.chest
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.chest replace air

execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item block -4 39 -1 container.16 copy entity @s armor.head
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run item entity @s armor.head replace air

setblock -4 40 -1 minecraft:oak_wall_sign[facing=east,waterlogged=false]{Text3:'{"text":"Bound Items"}'}
loot replace block -4 39 -1 container.4 loot pandamium:head
data merge block -4 40 -1 {Text2:'["",{"nbt":"Items[{Slot:4b}].tag.SkullOwner.Name","block":"-4 39 -1"},"\'s"]'}
item block -4 39 -1 container.4 replace air
