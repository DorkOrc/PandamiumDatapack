# arguments: x, y, z

execute store result score <attempts> variable run data get storage pandamium:queue selected.entry.attempts
function pandamium:utils/log {args:{message:[{text:'event="rtp",data={"success":true,"rolls":'},{score:{name:"<attempts>",objective:"variable"}},"}"]}}

function pandamium:utils/teleport/here/from_source {source:"rtp"}
playsound block.portal.travel ambient @s ~ ~ ~ 0.05 2
execute positioned ~ ~1 ~ unless predicate {condition:"minecraft:location_check",predicate:{light:{light:15}}} run particle minecraft:firefly ~ ~0.5 ~ 0.5 0 0.5 0 10 force @s
execute positioned ~ ~1 ~ unless predicate {condition:"minecraft:location_check",predicate:{light:{light:15}}} run function pandamium:misc/summon/fading_glow

execute unless score <month> global matches 4..5 unless score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[0,1,0,1]} ~ ~2 ~ 1 1 1 0 100 force @s
execute if score <month> global matches 4..5 run particle minecraft:tinted_leaves{color:[0,1,0,1]} ~ ~2 ~ 1 1 1 0 90 force @s
execute if score <month> global matches 4..5 run particle minecraft:cherry_leaves ~ ~2 ~ 1 1 1 0 10 force @s
execute if score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[1,0.788235294117647,0.10588235294117647,1]} ~ ~2 ~ 1 1 1 0 50 force
execute if score <month> global matches 9..11 run particle minecraft:tinted_leaves{color:[0.8705882352941177,0.43137254901960786,0.11764705882352941,1]} ~ ~2 ~ 1 1 1 0 50 force

effect give @s[scores={disable_keep_inventory=1}] resistance 10 4 true
advancement grant @s only pandamium:detect/first_rtp_per_session
scoreboard players set @s rtp_cooldown 200

$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{color:"dark_green",text:"[RTP]"},[{color:"green",text:" You have been teleported to "},{color:"aqua",text:"$(x) $(y) $(z)",hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]},click_event:{action:"copy_to_clipboard",value:"$(x) $(y) $(z)"}},"!"]]

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

$tellraw @s [{color:"dark_green",text:"[RTP]"},[{color:"green",text:" You have been teleported to "},{color:"aqua",obfuscated:true,text:"",extra:[{storage:"pandamium:temp",nbt:"padding[0][]",interpret:true,separator:""},"$(x) ",{storage:"pandamium:temp",nbt:"padding[1][]",interpret:true,separator:""},"$(y) ",{storage:"pandamium:temp",nbt:"padding[2][]",interpret:true,separator:""},"$(z)"],hover_event:{action:"show_text",value:[{text:"Click to copy the coordinates to your clipboard",color:"aqua"}]},click_event:{action:"copy_to_clipboard",value:"$(x) $(y) $(z)"}},"! "],{color:"blue",text:"ℹ",hover_event:{action:"show_text",value:["Open your output log to view the teleport coordinates, or click the obfuscated text to copy the coordinates to your clipboard.\n\n",{color:"gray",text:"The coordinates in your log will have extra padding characters around them."}]}}]
