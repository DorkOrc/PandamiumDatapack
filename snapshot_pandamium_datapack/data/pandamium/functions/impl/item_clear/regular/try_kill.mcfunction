scoreboard players set <non_valuable> variable 0
execute in pandamium:staff_world as @e[x=8.0,y=0.0,z=8.0,distance=..0.1,type=armor_stand,tag=item_clear.regular,limit=1] run function pandamium:impl/item_clear/regular/compare_as_armour_stand
execute if score <non_valuable> variable matches 1 run kill
