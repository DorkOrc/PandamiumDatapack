# Outputs:
# - storage pandamium:temp username

execute in pandamium:staff_world run setblock 0 0 0 barrel
execute in pandamium:staff_world run loot replace block 0 0 0 container.0 loot pandamium:head
execute in pandamium:staff_world run data modify storage pandamium:temp username set from block 0 0 0 Items[0].tag.SkullOwner.Name
