# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.NBT` from entity @s
function pandamium:misc/count_filled_inventory_slots

scoreboard players set <is_wearing_armour> variable 1
execute unless data storage pandamium:temp count.NBT.Inventory[{Slot:100b}] unless data storage pandamium:temp count.NBT.Inventory[{Slot:101b}] unless data storage pandamium:temp count.NBT.Inventory[{Slot:102b}] unless data storage pandamium:temp count.NBT.Inventory[{Slot:103b}] run scoreboard players set <is_wearing_armour> variable 0

execute if score <is_wearing_armour> variable matches 1 if score <empty_inventory_slots> variable matches 4.. in pandamium:staff_world run function pandamium:misc/unequip_all
execute if score <is_wearing_armour> variable matches 1 if score <empty_inventory_slots> variable matches 4.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your armour!","color":"dark_aqua"}]
execute if score <is_wearing_armour> variable matches 1 unless score <empty_inventory_slots> variable matches 4.. run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Take off your armour before attempting this section otherwise it will be damaged by the cacti!","color":"red"}]
