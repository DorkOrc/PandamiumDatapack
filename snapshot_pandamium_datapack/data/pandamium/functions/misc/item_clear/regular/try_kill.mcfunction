scoreboard players set <non_valuable> variable 0
execute in pandamium:staff_world as @e[x=0,y=0,z=0,distance=0,type=armor_stand,tag=item_clear.regular,limit=1] run function pandamium:misc/item_clear/regular/compare_as_armor_stand
execute if score <non_valuable> variable matches 1 run kill
