# run IN pandamium:staff_world
setblock 0 0 0 chest
loot replace block 0 0 0 container.0 loot pandamium:head
data modify storage pandamium:temp username set from block 0 0 0 Items[0].tag.SkullOwner.Name
