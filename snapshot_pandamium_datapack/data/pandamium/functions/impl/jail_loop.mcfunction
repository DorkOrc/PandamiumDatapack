tp @a[scores={jailed=1..},predicate=!pandamium:in_jail] -337.0 127.0 161.5 180 0

# Move jail items to the staff world
execute as @e[type=item,x=-340,y=126,z=158,dx=5,dy=5,dz=6,tag=!jail_items.ignore] run function pandamium:impl/jail_items/as_item
