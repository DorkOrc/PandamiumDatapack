data modify storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt set value {PickupDelay:40s}
data modify storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt.Motion set from entity @s Motion

execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt.Motion[0] double 0.0015 run data get storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt.Motion[0] 1000
execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt.Motion[2] double 0.0015 run data get storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt.Motion[2] 1000

data modify entity @s {} merge from storage pandamium:local functions."pandamium:impl/drop_inventory/modify_item_entities".nbt
