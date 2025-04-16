execute if score @s inspect_inventory matches 1 run return run function pandamium:impl/containers/print_menu/main

scoreboard players set <id> variable 0
scoreboard players operation <id> variable = @s inspect_inventory
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run tellraw @s [{text:"[Containers]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"<target_id>",objective:"variable"}},"!"]}]
scoreboard players operation @s selected_player = <id> variable

data modify storage pandamium:containers items set value []
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:triggers/inspect_inventory/get_target_inventory

execute unless data storage pandamium:containers items[0] run return run tellraw @s [{text:"[Containers] ",color:"dark_red"},{selector:"@a[predicate=pandamium:matches_id,limit=1]",color:"red"},{text:" has no items in their inventory!",color:"red"}]

# Run
data modify storage pandamium:containers source set value 'inventory'
tellraw @s [{text:"========",color:"yellow"},{text:" Inventory Contents ",bold:true},"========",{text:"\nPlayer: ",bold:true,color:"yellow"},{selector:"@a[predicate=pandamium:matches_id,limit=1]"}]
function pandamium:impl/containers/inventory
tellraw @s {text:"=====================================",color:"yellow"}
