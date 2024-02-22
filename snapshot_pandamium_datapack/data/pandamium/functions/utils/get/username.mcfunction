# Outputs:
# - storage pandamium:temp username

execute in pandamium:staff_world run loot replace block 1 0 0 container.0 loot pandamium:utility/head
execute in pandamium:staff_world run data modify storage pandamium:temp username set from block 1 0 0 Items[0].tag.SkullOwner.Name
