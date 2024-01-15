# arguments: output

$execute in pandamium:staff_world run summon item_display 0. 0 0. {Tags:["region_search.sort_marker_base"],Passengers:$(output)}
execute in pandamium:staff_world run kill @e[type=item_display,tag=region_search.sort_marker_base,x=0.0,y=0.0,z=0.0,distance=..1]
execute in pandamium:staff_world positioned 0. 0 0. as @e[type=marker,tag=region_search.sort_marker,distance=..1] run data modify entity @s Pos[1] set from entity @s data.sort_position
execute in pandamium:staff_world positioned 0. 0 0. as @e[type=marker,tag=region_search.sort_marker,distance=..1,sort=furthest] run data modify storage pandamium:temp nearby_homes append from entity @s data
execute in pandamium:staff_world positioned 0. 0 0. run kill @e[type=marker,tag=region_search.sort_marker,distance=..1]
