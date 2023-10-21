function pandamium:utils/count_filled_inventory_slots
execute if score <empty_inventory_slots> variable matches 0 run return run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},{"text":"Your inventory is full!","color":"red"}]

loot give @s loot pandamium:guidebook
tellraw @s [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]

return 1
