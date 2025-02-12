# arguments: slot, (user_id)

# report error
title @s actionbar {text:"Could not find a Pale Garden nearby",color:"red"}

# return item
$execute unless items entity @s $(slot) * run return run loot replace entity @s $(slot) loot pandamium:items/custom/pale_garden_compass
execute if predicate pandamium:player/can_pick_up_any_item run return run loot give @s loot pandamium:items/custom/pale_garden_compass
execute at @s run return run loot spawn ~ ~ ~ loot pandamium:items/custom/pale_garden_compass
