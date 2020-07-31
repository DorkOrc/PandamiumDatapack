
setblock -4 39 -1 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}
data remove block -4 39 -1 Items[]
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:10b,id:"minecraft:barrier",Count:1b,tag:{}}
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].id set from entity @p Inventory[{Slot:100b}].id
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].Count set from entity @p Inventory[{Slot:100b}].Count
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:10b}].tag set from entity @p Inventory[{Slot:100b}].tag
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @p armor.feet air

execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:12b,id:"minecraft:barrier",Count:1b,tag:{}}
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].id set from entity @p Inventory[{Slot:101b}].id
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].Count set from entity @p Inventory[{Slot:101b}].Count
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:12b}].tag set from entity @p Inventory[{Slot:101b}].tag
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @p armor.legs air

execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:14b,id:"minecraft:barrier",Count:1b,tag:{}}
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].id set from entity @p Inventory[{Slot:102b}].id
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].Count set from entity @p Inventory[{Slot:102b}].Count
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:14b}].tag set from entity @p Inventory[{Slot:102b}].tag
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @p armor.chest air

execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items append value {Slot:16b,id:"minecraft:barrier",Count:1b,tag:{}}
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].id set from entity @p Inventory[{Slot:103b}].id
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].Count set from entity @p Inventory[{Slot:103b}].Count
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify block -4 39 -1 Items[{Slot:16b}].tag set from entity @p Inventory[{Slot:103b}].tag
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run replaceitem entity @p armor.head air

setblock -4 40 -1 minecraft:air
setblock -4 40 -1 minecraft:oak_wall_sign[facing=east,waterlogged=false]{Text3:'{"text":"Bound Items"}'}
execute at @a if score @s id = @p id as @p run loot replace block -4 39 -1 container.0 loot pandamium:head
data merge block -4 40 -1 {Text2:'[{"nbt":"Items[{Slot:0b}].tag.SkullOwner.Name","block":"-4 39 -1","color":"#7b00ec"},"\'s"]'}
replaceitem block -4 39 -1 container.0 air
