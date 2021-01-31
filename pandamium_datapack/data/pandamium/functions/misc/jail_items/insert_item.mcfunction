loot insert ~ ~ ~ loot pandamium:placeholder
#barrier{placeholder:1b}

data modify storage pandamium:jail_items Item.Slot set from block ~ ~ ~ Items[{tag:{placeholder:1b}}].Slot
data modify block ~ ~ ~ Items[{tag:{placeholder:1b}}] set from storage pandamium:jail_items Item
