
setblock -4 39 -1 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}
data modify block -4 39 -1 Items set value {}
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:10b,id:"minecraft:barrier",Count:1b,tag:{}}
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].id set from entity @s Inventory[{Slot:100b}].id
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].Count set from entity @s Inventory[{Slot:100b}].Count
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].tag set from entity @s Inventory[{Slot:100b}].tag
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @s armor.feet air

execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:12b,id:"minecraft:barrier",Count:1b,tag:{}}
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].id set from entity @s Inventory[{Slot:101b}].id
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].Count set from entity @s Inventory[{Slot:101b}].Count
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].tag set from entity @s Inventory[{Slot:101b}].tag
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @s armor.legs air

execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:14b,id:"minecraft:barrier",Count:1b,tag:{}}
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].id set from entity @s Inventory[{Slot:102b}].id
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].Count set from entity @s Inventory[{Slot:102b}].Count
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].tag set from entity @s Inventory[{Slot:102b}].tag
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @s armor.chest air

execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:16b,id:"minecraft:barrier",Count:1b,tag:{}}
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].id set from entity @s Inventory[{Slot:103b}].id
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].Count set from entity @s Inventory[{Slot:103b}].Count
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].tag set from entity @s Inventory[{Slot:103b}].tag
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @s armor.head air

setblock -4 40 -1 minecraft:oak_wall_sign[facing=east,waterlogged=false]{Text3:'{"text":"Bound Items"}'}
setblock -2 52 -1 minecraft:chest[facing=south,waterlogged=false]{Items:[]}
loot replace block -2 52 -1 container.0 loot pandamium:head
data merge block -4 40 -1 {Text2:'["",{"nbt":"Items[{Slot:0b}].tag.SkullOwner.Name","block":"-2 52 -1","color":"#7b00ec"},"\'s"]'}
replaceitem block -2 52 -1 container.0 air
