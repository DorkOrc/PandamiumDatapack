# run IN pandamium:staff_world

# Move Items
data modify block ~ ~ ~ Items set from storage pandamium:take enderchest

# Clear Items
loot replace entity @s enderchest.0 27 loot empty

# Name Chest
function pandamium:utils/get/username
data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"username","storage":"pandamium:temp"},"\'s Ender Chest"]'
data modify block ~ ~ ~ CustomName set from block 3 0 0 front_text.messages[0]
