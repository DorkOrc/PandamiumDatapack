data modify storage pandamium:temp count.nbt set from entity @s
data modify storage pandamium:temp count.temp set from storage pandamium:temp count.nbt.Inventory

# ignore offhand and armour slots
execute store success score <feet_slot_filled> variable run data remove storage pandamium:temp count.temp[{Slot:100b}]
execute store success score <legs_slot_filled> variable run data remove storage pandamium:temp count.temp[{Slot:101b}]
execute store success score <chest_slot_filled> variable run data remove storage pandamium:temp count.temp[{Slot:102b}]
execute store success score <head_slot_filled> variable run data remove storage pandamium:temp count.temp[{Slot:103b}]
execute store success score <offhand_slot_filled> variable run data remove storage pandamium:temp count.temp[{Slot:-106b}]
execute store success score <mainhand_slot_filled> variable if data storage pandamium:temp count.nbt.SelectedItem

execute store result score <filled_inventory_slots> variable run data get storage pandamium:temp count.temp
scoreboard players set <empty_inventory_slots> variable 36
scoreboard players operation <empty_inventory_slots> variable -= <filled_inventory_slots> variable
