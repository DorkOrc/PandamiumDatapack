# run IN pandamium:staff_world

# Move Items
data modify block ~ ~ ~ Items set from storage pandamium:temp NBT.EnderItems

# Clear Items
loot replace entity @s enderchest.0 27 loot empty

# Name Chest
setblock 0 0 0 air
function pandamium:misc/get_username
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"username","storage":"pandamium:temp"},"\'s Ender Chest"]'}
data modify block ~ ~ ~ CustomName set from block 0 0 0 Text1
