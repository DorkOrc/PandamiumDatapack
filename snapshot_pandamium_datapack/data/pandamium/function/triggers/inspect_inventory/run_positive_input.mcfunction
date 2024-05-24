execute if score @s inspect_inventory matches 1 run return run function pandamium:impl/containers/print_menu/main

scoreboard players set <id> variable 0
scoreboard players operation <id> variable = @s inspect_inventory
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run tellraw @s [{"text":"[Containers]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"<target_id>","objective":"variable"}},"!"]]
scoreboard players operation @s selected_player = <id> variable

data modify storage pandamium:containers items set value []
data modify storage pandamium:containers items set from entity @a[predicate=pandamium:matches_id,limit=1] Inventory

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.cursor
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 204
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.0
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 200
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.1
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 201
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.2
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 202
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.3
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 203
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

execute unless data storage pandamium:containers items[0] run return run tellraw @s [{"text":"[Containers] ","color":"dark_red"},{"selector":"@a[predicate=pandamium:matches_id,limit=1]","color":"red"},{"text":" has no items in their inventory!","color":"red"}]

# Run
data modify storage pandamium:containers source set value 'inventory'
tellraw @s [{"text":"========","color":"yellow"},{"text":" Inventory Contents ","bold":true},"========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}]
function pandamium:impl/containers/inventory
tellraw @s {"text":"=====================================","color":"yellow"}
