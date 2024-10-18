# arguments: color

$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=up] run summon shulker ~ ~ ~ {AttachFace:0b,Color:$(color)b,Peek:100}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=down] run summon shulker ~ ~ ~ {AttachFace:1b,Color:$(color)b,Peek:100}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=south] run summon shulker ~ ~ ~ {AttachFace:2b,Color:$(color)b,Peek:100}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=north] run summon shulker ~ ~ ~ {AttachFace:3b,Color:$(color)b,Peek:100}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=east] run summon shulker ~ ~ ~ {AttachFace:4b,Color:$(color)b,Peek:100}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=west] run summon shulker ~ ~ ~ {AttachFace:5b,Color:$(color)b,Peek:100}
