execute unless predicate pandamium:player/can_pick_up_any_item run return run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},{"text":"Your inventory is full!","color":"red"}]

loot give @s loot pandamium:items/custom/guidebook
tellraw @s [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]

return 1
