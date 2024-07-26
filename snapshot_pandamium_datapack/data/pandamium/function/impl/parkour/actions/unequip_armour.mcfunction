execute unless items entity @s armor.* * run return 1

function pandamium:utils/count_filled_inventory_slots
execute unless score <empty_inventory_slots> variable matches 4.. run return run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Take off your armour before attempting this section otherwise it will be damaged by the cacti!","color":"red"}]

execute in pandamium:staff_world run function pandamium:misc/unequip_armour
tellraw @s [{"text":"[Parkour]","color":"aqua"},{"text":" Unequipped your armour!","color":"dark_aqua"}]
return 1
