execute if entity @e[limit=1,x=0,type=item_display,tag=elevator.brain,tag=elevator.id.mineshaft] run return run tellraw @s [{color:"dark_red",text:"[Elevator]"},{color:"red",text:" Elevator is already moving!"}]
execute unless block -196 78 203 #pandamium:elevator_replaceable run return run tellraw @s [{color:"dark_red",text:"[Elevator]"},{color:"red",text:" Elevator is already at the bottom floor!"}]

execute positioned -196 122 203 run function pandamium:impl/hub/elevator/summon {id:"mineshaft",blocks_per_tick:0.25,to_y_level:79}
