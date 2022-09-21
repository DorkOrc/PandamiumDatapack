execute in pandamium:staff_world run summon armor_stand 0. 0 0. {Tags:["item_clear"]}
execute as @e[type=item,nbt=!{Item:{tag:{}}}] run function pandamium:misc/item_clear/clear_excess_items/as_item
execute in pandamium:staff_world run kill @e[x=0,y=0,z=0,distance=0,type=armor_stand,tag=item_clear]
