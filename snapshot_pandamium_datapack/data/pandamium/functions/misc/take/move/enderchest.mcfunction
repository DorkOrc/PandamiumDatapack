# run IN pandamium:staff_world

# Move Items
data modify block ~ ~ ~ Items set from storage pandamium:temp nbt.EnderItems

# Clear Items
loot replace entity @s enderchest.0 27 loot empty

# Name Chest
function pandamium:misc/get_username
data modify block 4 0 0 Book.tag.pages[0] set value '[{"nbt":"username","storage":"pandamium:temp"},"\'s Ender Chest"]'
data modify block 4 0 0 Book.tag.resolved set value 0b
data modify block ~ ~ ~ CustomName set from block 0 0 0 front_text.messages[0]
