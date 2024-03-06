execute as @e[type=player,scores={jailed=1..},predicate=!pandamium:in_jail] run function pandamium:misc/warp/jail

# Move jail items to the staff world
execute as @e[type=item,x=-340,y=126,z=158,dx=5,dy=5,dz=6,tag=!jail_items.ignore] run function pandamium:impl/jail_items/as_item
