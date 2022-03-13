# run IN pandamium:staff_world
data modify storage pandamium:temp NBT set from entity @s

execute store result score <has_items> variable if data storage pandamium:temp NBT.EnderItems[]
execute store success score <returned> variable unless score <has_items> variable matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no items in their ender chest!","color":"red"}]

execute if score <returned> variable matches 0 run summon marker 7 64 -2 {Tags:['take.pick_chest']}
execute if score <returned> variable matches 0 as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/single
execute if score <returned> variable matches 0 at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/enderchest
execute if score <returned> variable matches 0 run kill @e[type=marker,tag=take.pick_chest,x=0]
