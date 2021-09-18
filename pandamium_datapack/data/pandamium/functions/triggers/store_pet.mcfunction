# run AT @s

tag @s add running_trigger
data modify storage pandamium:temp NBT set from entity @s

function pandamium:misc/count_filled_inventory_slots
execute store success score <entity_exists> variable if entity @e[type=#pandamium:storeables,limit=1,sort=nearest,distance=..10]

execute if score <entity_exists> variable matches 0 run tellraw @s [{"text":"[Pet]","color":"dark_red"},{"text":" There are no entities nearby that can be stored!","color":"red"}]
execute if score <entity_exists> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Pet]","color":"dark_red"},{"text":" Your inventory is full!","color":"red"}]

execute if score <entity_exists> variable matches 1 unless score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Pet]","color":"dark_green"},[{"text":" Turned ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@e[type=#pandamium:storeables,limit=1,sort=nearest,distance=..10]"}]," into a ",{"text":"Stored Pet Item","color":"aqua"},"!"]]
execute unless score <filled_inventory_slots> variable matches 36.. as @e[type=#pandamium:storeables,limit=1,sort=nearest,distance=..10] in pandamium:staff_world run function pandamium:misc/store_pet/create_item

tag @s remove running_trigger
scoreboard players reset @s pet.store
scoreboard players enable @s pet.store
