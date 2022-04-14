execute in pandamium:staff_world run summon armor_stand 8 0 8 {Tags:["clear_excess_items"],Marker:1b}
execute as @e[type=item,nbt=!{Item:{tag:{}}}] run function pandamium:misc/item_clear/clear_excess_items/as_item
execute in pandamium:staff_world run kill @e[x=7,y=-1,z=7,dx=2,dy=2,dz=2,type=armor_stand,tag=clear_excess_items,limit=1]
