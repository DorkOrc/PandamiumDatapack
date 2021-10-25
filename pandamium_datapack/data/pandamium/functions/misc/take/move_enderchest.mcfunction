# run IN pandamium:staff_world

data modify block 7 64 -2 Items set from storage pandamium:temp NBT.EnderItems

# Clear Slots
loot replace entity @s enderchest.0 27 loot empty

setblock 0 0 0 air
function pandamium:misc/get_username
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"username","storage":"pandamium:temp"},"\'s Ender Chest"]'}
data modify block 7 64 -2 CustomName set from block 0 0 0 Text1
