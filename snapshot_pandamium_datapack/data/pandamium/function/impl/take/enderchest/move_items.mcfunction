# run IN pandamium:staff_world

# Move Items
data modify block ~ ~ ~ Items set from storage pandamium:take enderchest

# Clear Items
loot replace entity @s enderchest.0 27 loot pandamium:intentionally_empty

# Name Chest
function pandamium:utils/get/username
data modify storage pandamium:text input set value [{nbt:"username",storage:"pandamium:temp"},{text:"'s Ender Chest"}]
function pandamium:utils/text/input/resolve
data modify block ~ ~ ~ CustomName set from storage pandamium:text input
