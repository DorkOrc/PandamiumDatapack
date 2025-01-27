# arguments: id

data remove storage pandamium:temp display_name

# online display name
$execute store result storage pandamium:local functions."pandamium:utils/get/display_name/from_id".id int 1 run scoreboard players set <id> variable $(id)
execute as @a[predicate=pandamium:matches_id,limit=1] in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{text:"",extra:[{selector:"@s"}]}}]}
execute if entity @a[predicate=pandamium:matches_id,limit=1] in pandamium:staff_world run return run data modify storage pandamium:temp display_name set from block 5 0 0 item.components.minecraft:custom_name

# offline display name
function pandamium:utils/get/username/from_id with storage pandamium:local functions."pandamium:utils/get/display_name/from_id"
$data modify storage pandamium:text input set value [{text:""},{storage:"pandamium:temp",nbt:"username",insertion:"$(id)",hover_event:{action:"show_text",value:{text:"Shift+Click to insert User ID",color:"gray"}}},{text:" (Offline)",color:"gray"}]
function pandamium:utils/text/input/resolve
execute if data storage pandamium:temp username run return run data modify storage pandamium:temp display_name set from storage pandamium:text input
