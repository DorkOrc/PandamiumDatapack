# arguments: color, block

$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=up] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:0b,Color:$(color)b,Peek:100}
$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=down] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:1b,Color:$(color)b,Peek:100}
$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=south] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:2b,Color:$(color)b,Peek:100}
$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=north] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:3b,Color:$(color)b,Peek:100}
$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=east] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:4b,Color:$(color)b,Peek:100}
$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=west] run summon shulker ~ ~1 ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,AttachFace:5b,Color:$(color)b,Peek:100}

$execute if block ~ ~1 ~ #minecraft:shulker_boxes[facing=up] run setblock ~ ~ ~ $(replacement_block_state) destroy
