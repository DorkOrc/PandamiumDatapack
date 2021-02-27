execute in pandamium:staff_world run summon armor_stand ~ ~ ~ {Tags:["clear_excess_items"],NoGravity:1b}
execute as @e[type=item] unless data entity @s Item.tag run function pandamium:misc/clear_excess_items_
execute in pandamium:staff_world run kill @e[x=0,type=armor_stand,tag=clear_excess_items]
