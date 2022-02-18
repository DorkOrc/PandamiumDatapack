data modify storage pandamium:temp count.NBT set from entity @s
data modify storage pandamium:temp count.NBT_backup set from storage pandamium:temp count.NBT

# ignore offhand and armour slots
data remove storage pandamium:temp count.NBT.Inventory[{Slot:100b}]
data remove storage pandamium:temp count.NBT.Inventory[{Slot:101b}]
data remove storage pandamium:temp count.NBT.Inventory[{Slot:102b}]
data remove storage pandamium:temp count.NBT.Inventory[{Slot:103b}]
data remove storage pandamium:temp count.NBT.Inventory[{Slot:-106b}]

execute store result score <filled_inventory_slots> variable run data get storage pandamium:temp count.NBT.Inventory

data modify storage pandamium:temp count.NBT set from storage pandamium:temp count.NBT_backup
