attribute @s minecraft:waypoint_transmit_range base set 100

attribute @s minecraft:waypoint_receive_range base set 100
execute if score @s optn.disable_locator_bar matches 1.. run attribute @s minecraft:waypoint_receive_range base set 0
