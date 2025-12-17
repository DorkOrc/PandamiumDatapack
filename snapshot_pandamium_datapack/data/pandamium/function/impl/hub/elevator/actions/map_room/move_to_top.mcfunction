execute if entity @e[limit=1,x=0,type=item_display,tag=elevator.brain,tag=elevator.id.map_room] run return run tellraw @s [{color:"dark_red",text:"[Elevator]"},{color:"red",text:" Elevator is already moving!"}]
execute unless block -312 143 122 #pandamium:elevator_replaceable run return run tellraw @s [{color:"dark_red",text:"[Elevator]"},{color:"red",text:" Elevator is already at the top floor!"}]

execute unless block -312 126 122 #pandamium:elevator_replaceable run return run execute positioned -312 127 122 run function pandamium:impl/hub/elevator/summon {id:"map_room",blocks_per_tick:0.35,to_y_level:144}
execute unless block -312 110 122 #pandamium:elevator_replaceable run return run execute positioned -312 111 122 run function pandamium:impl/hub/elevator/summon {id:"map_room",blocks_per_tick:0.4,to_y_level:144}
