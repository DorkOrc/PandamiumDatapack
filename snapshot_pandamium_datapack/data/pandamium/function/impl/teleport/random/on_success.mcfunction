# arguments: x, y, z

function pandamium:utils/teleport/here/from_source {source:"rtp"}
playsound block.portal.travel ambient @s ~ ~ ~ 0.05 2
execute unless score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[0,1,0,1]} ~ ~2 ~ 1 1 1 0 100 force @s
execute if score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[1,0.788235294117647,0.10588235294117647,1]} ~ ~2 ~ 1 1 1 0 50 force
execute if score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[0.8705882352941177,0.43137254901960786,0.11764705882352941,1]} ~ ~2 ~ 1 1 1 0 50 force
effect give @s[scores={disable_keep_inventory=1}] resistance 10 4 true

advancement grant @s only pandamium:detect/first_rtp_per_session

$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"green"},{text:"[RTP]",color:"blue"}," You have been teleported to ",{text:"$(x) $(y) $(z)",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]}},"!"]

# hidden coordinates
data modify storage pandamium:temp padding set value [[],[],[]]
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[0] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[0] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[0] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[0] append value "_"

execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[1] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[1] append value "_"

execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[2] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[2] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[2] append value "_"
execute if predicate pandamium:coin_flip run data modify storage pandamium:temp padding[2] append value "_"

$tellraw @s [{text:"",color:"green"},{text:"[RTP]",color:"blue"}," You have been teleported to ",{text:"",color:"aqua",obfuscated:true,hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]},extra:[{storage:"pandamium:temp",nbt:"padding[0][]",separator:""},"$(x) ",{storage:"pandamium:temp",nbt:"padding[1][]",separator:""},"$(y) ",{storage:"pandamium:temp",nbt:"padding[2][]",separator:""},"$(z)"]},"! ",{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:["Open your output log to view the teleport coordinates, or click the obfuscated text to copy the coordinates to your clipboard.\n\n",{text:"The coordinates in your log will have extra padding characters around them.",color:"gray"}]}}]
