scoreboard players set <valuable> variable 0
data modify storage pandamium:temp NBT set from entity @s
execute store result score <age> variable run data get storage pandamium:temp NBT.Age

execute unless score <age> variable matches ..1200 in pandamium:staff_world as @e[x=0,y=0,z=0,distance=0,type=armor_stand,tag=item_clear,limit=1] run function pandamium:misc/item_clear/clear_excess_items/as_armor_stand
execute unless score <age> variable matches ..1200 unless score <valuable> variable matches 1 run kill
