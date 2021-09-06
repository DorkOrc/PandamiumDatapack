data modify storage pandamium:temp Inventory set value []
data modify storage pandamium:temp Inventory set from entity @s Inventory
execute store result score <filled_inventory_slots> variable run data get storage pandamium:temp Inventory

# ignore offhand and armour slots
execute if data storage pandamium:temp Inventory[{Slot:100b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if data storage pandamium:temp Inventory[{Slot:101b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if data storage pandamium:temp Inventory[{Slot:102b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if data storage pandamium:temp Inventory[{Slot:103b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if data storage pandamium:temp Inventory[{Slot:-106b}] run scoreboard players remove <filled_inventory_slots> variable 1
