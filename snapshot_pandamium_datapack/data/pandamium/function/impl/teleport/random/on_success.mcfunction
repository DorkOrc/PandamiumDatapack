# arguments: x, y, z

function pandamium:utils/teleport/here/from_source {source:"rtp"}
playsound block.portal.travel ambient @s ~ ~ ~ 0.1 2
effect give @s[scores={disable_keep_inventory=1}] resistance 10 4 true

advancement grant @s only pandamium:detect/first_rtp_per_session

$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"green"},{text:"[RTP]",color:"blue"},{text:" You have been teleported to "},{text:"$(x) $(y) $(z)",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]}},{text:"!"}]

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

$tellraw @s [{text:"",color:"green"},{text:"[RTP]",color:"blue"},{text:" You have been teleported to "},{text:"",color:"aqua",obfuscated:true,hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]},extra:[{storage:"pandamium:temp",nbt:"padding[0][]",separator:""},{text:"$(x) "},{storage:"pandamium:temp",nbt:"padding[1][]",separator:""},{text:"$(y) "},{storage:"pandamium:temp",nbt:"padding[2][]",separator:""},{text:"$(z)"}]},{text:"! "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:[{text:"Open your output log to view the teleport coordinates, or click the obfuscated text to copy the coordinates to your clipboard.\n\n"},{text:"The coordinates in your log will have extra padding characters around them.",color:"gray"}]}}]
