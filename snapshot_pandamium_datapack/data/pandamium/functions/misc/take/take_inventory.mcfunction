# run IN pandamium:staff_world
execute store result score <item_count> variable if data entity @s Inventory[]
execute store success score <returned> variable unless score <item_count> variable matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no items in their inventory!","color":"red"}]

execute if score <returned> variable matches 0 run summon marker 7 64 -5 {Tags:['take.pick_chest']}
execute if score <returned> variable matches 0 as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/double
execute if score <returned> variable matches 0 at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/inventory
execute if score <returned> variable matches 0 run kill @e[type=marker,tag=take.pick_chest,x=0]
