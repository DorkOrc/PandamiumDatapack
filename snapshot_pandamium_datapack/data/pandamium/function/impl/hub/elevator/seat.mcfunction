# arguments: id

$summon minecraft:item_display ~ ~ ~ {Tags:["elevator","elevator.seat","elevator.move","elevator.id.$(id)","elevator.seat.new"],data:{elevator:{id:"$(id)",seat:true,move:true}},teleport_duration:1}
ride @s mount @e[limit=1,distance=..0.001,tag=elevator.seat.new]
tag @e[limit=1,distance=..0.001,tag=elevator.seat.new] remove elevator.seat.new
