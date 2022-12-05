# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.nbt` from entity @s
function pandamium:misc/count_filled_inventory_slots

scoreboard players set <is_wearing_armour> variable 1
execute if score <feet_slot_filled> variable matches 0 if score <legs_slot_filled> variable matches 0 if score <chest_slot_filled> variable matches 0 if score <head_slot_filled> variable matches 0 run scoreboard players set <is_wearing_armour> variable 0

execute if score <is_wearing_armour> variable matches 1 if score <empty_inventory_slots> variable matches 4.. in pandamium:staff_world run function pandamium:misc/unequip_armour
execute if score <is_wearing_armour> variable matches 1 if score <empty_inventory_slots> variable matches 4.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your armour!","color":"dark_aqua"}]
execute if score <is_wearing_armour> variable matches 1 unless score <empty_inventory_slots> variable matches 4.. run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Take off your armour before attempting this section otherwise it will be damaged by the cacti!","color":"red"}]
