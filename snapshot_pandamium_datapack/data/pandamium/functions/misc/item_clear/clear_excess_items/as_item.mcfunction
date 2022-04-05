data modify storage pandamium:temp NBT set from entity @s
execute in pandamium:staff_world as @e[x=7,y=-1,z=7,dx=2,dy=2,dz=2,type=armor_stand,tag=clear_excess_items,limit=1] run function pandamium:misc/item_clear/clear_excess_items/as_armor_stand
execute store result score <age> variable run data get storage pandamium:temp NBT.Age
execute if score <valuable> variable matches 0 if score <age> variable matches 300.. run kill
