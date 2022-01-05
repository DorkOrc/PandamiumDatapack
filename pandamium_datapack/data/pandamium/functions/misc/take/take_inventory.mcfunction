# run IN pandamium:staff_world
data modify storage pandamium:temp NBT set from entity @s

execute store result score <has_items> variable if data storage pandamium:temp NBT.Inventory[]
execute store success score <can_run> variable if score <has_items> variable matches 1..

execute if score <can_run> variable matches 1 run summon marker 7 64 -5 {Tags:['take.pick_chest']}
execute if score <can_run> variable matches 1 as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/double
execute if score <can_run> variable matches 1 at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/inventory
execute if score <can_run> variable matches 1 run kill @e[type=marker,tag=take.pick_chest,x=0]
