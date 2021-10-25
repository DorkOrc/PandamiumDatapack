# run IN pandamium:staff_world

execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace block 7 64 0 container.10 from entity @s armor.feet
execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace entity @s armor.feet with air

execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace block 7 64 0 container.12 from entity @s armor.legs
execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace entity @s armor.legs with air

execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace block 7 64 0 container.14 from entity @s armor.chest
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace entity @s armor.chest with air

execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace block 7 64 0 container.16 from entity @s armor.head
execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run item replace entity @s armor.head with air

setblock 0 0 0 air
function pandamium:misc/get_username
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"username","storage":"pandamium:temp"},"\'s Bound Items"]'}
data modify block 7 64 0 CustomName set from block 0 0 0 Text1
