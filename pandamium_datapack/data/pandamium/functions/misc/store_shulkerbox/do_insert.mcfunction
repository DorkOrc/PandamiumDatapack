# run IN pandamium:staff_world

fill 0 0 0 0 1 0 shulker_box

data modify block 0 0 0 Items set from storage pandamium:temp NBT.Inventory[{Slot:-106b}].tag.BlockEntityTag.Items

item replace block 0 1 0 container.0 from entity @s weapon.mainhand
loot insert 0 0 0 mine 0 1 0 air{drop_contents:1b}

item replace block 0 1 0 container.0 from entity @s weapon.offhand
data modify block 0 1 0 Items[0].tag.BlockEntityTag.Items set from block 0 0 0 Items

loot replace entity @s weapon.offhand mine 0 1 0 air{drop_contents:1b}
item replace entity @s weapon.mainhand with air
