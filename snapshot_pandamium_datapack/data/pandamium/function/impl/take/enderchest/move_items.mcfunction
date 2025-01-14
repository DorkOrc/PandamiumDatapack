# run IN pandamium:staff_world

# Move Items
data modify block ~ ~ ~ Items set from storage pandamium:take enderchest

# Clear Items
loot replace entity @s enderchest.0 27 loot pandamium:intentionally_empty

# Name Chest
function pandamium:utils/get/username
loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{nbt:"username",storage:"pandamium:temp"},{text:"'s Ender Chest"}]}]}
data modify block ~ ~ ~ CustomName set from block 5 0 0 item.components.minecraft:custom_name
