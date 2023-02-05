tp @a[scores={jailed=1},predicate=!pandamium:in_jail/normal] -51 144 -109 -180 0
tp @a[scores={jailed=2},predicate=!pandamium:in_jail/questioning] -37. 144 -107 0 0

# Move jail items to the staff world
execute as @e[type=item,x=-55,y=144,z=-112,dx=6,dy=5,dz=9,tag=!jail_items.ignore] run function pandamium:misc/jail_items/as_item
execute as @e[type=item,x=-39,y=144,z=-112,dx=5,dy=5,dz=7,tag=!jail_items.ignore] run function pandamium:misc/jail_items/as_item
