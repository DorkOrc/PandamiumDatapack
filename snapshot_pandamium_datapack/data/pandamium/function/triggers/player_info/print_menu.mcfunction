data modify storage pandamium:temp player_info.nbt set from entity @a[tag=player_info.target,limit=1]
execute as @a[tag=player_info.target,limit=1] run function pandamium:utils/database/players/load/self

#

tellraw @s [{text:"======== ",color:"yellow"},{text:"Player Info",bold:true},{text:" ========"},{text:"\nPlayer: ",bold:true,color:"yellow"},{selector:"@a[tag=player_info.target,limit=1]"},{text:" ("},{score:{name:"@a[tag=player_info.target,limit=1]",objective:"id"},bold:true},{text:")"}]

function pandamium:triggers/player_info/print_playtime

execute store result score <votes> variable run scoreboard players get @a[tag=player_info.target,limit=1] votes
tellraw @s [{text:"Votes: ",color:"gold"},{score:{name:"<votes>",objective:"variable"},bold:true,color:"yellow"}]

execute as @a[tag=player_info.target,limit=1] run function pandamium:triggers/player_info/print_spawnpoint
function pandamium:triggers/player_info/print_last_death_location

scoreboard players operation <dimension> variable = @a[tag=player_info.target,limit=1] last_position.x
function pandamium:utils/get/dimension_name/from_score
tellraw @s [{text:"Last Position: ",color:"gold"},{text:"[👁]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"",color:"gold"},{score:{name:"@a[tag=player_info.target,limit=1]",objective:"last_position.x"},bold:true,color:"yellow",extra:[{text:" "},{score:{name:"@a[tag=player_info.target,limit=1]",objective:"last_position.y"}},{text:" "},{score:{name:"@a[tag=player_info.target,limit=1]",objective:"last_position.z"}}]},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp",color:"yellow",bold:true}]}}]
function pandamium:triggers/player_info/print_teleport_history/main

execute store result score <health> variable run data get storage pandamium:temp player_info.nbt.Health
execute store result score <hunger> variable run data get storage pandamium:temp player_info.nbt.foodLevel
tellraw @s [{text:"Health: ",color:"gold"},{score:{name:"<health>",objective:"variable"},bold:true,color:"yellow"},{text:"  Hunger: "},{score:{name:"<hunger>",objective:"variable"},bold:true,color:"yellow"}]

tellraw @s {text:"[Target Options Menu]",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Options",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -22"}}

tellraw @s ""

# Click Events
execute if score @s staff_perms matches ..1 run tellraw @s [{text:"",color:"yellow"},{text:"[Jail]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Jail",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -5"}},{text:" "},{text:"[Unjail]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Unjail",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -7"}},{text:" "},{text:"[Kick]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Kick",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -8"}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{text:"",color:"yellow"},{text:"[Jail]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Jail",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -5"}},{text:" "},{text:"[Unjail]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Unjail",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -7"}},{text:" "},{text:"[Kick]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Kick",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -8"}},{text:" "},{text:"[Ban]",color:"gold",hover_event:{action:"show_text",text:[{text:"Click to ",color:"gold"},{text:"Ban",bold:true},{text:" target"}]},click_event:{action:"run_command",command:"trigger player_info set -9"}}]

tellraw @s [{text:"",color:"yellow"},{text:"[Inventory]",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Inventory",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -10"}},{text:" "},{text:"[Ender Chest]",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Ender Chest",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -11"}},{text:" "},{text:"[Homes]",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Homes",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -12"}},{text:" "},{text:"[Votes]",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Votes",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -3"}},{text:" "},{text:"[Spawnpoint]",hover_event:{action:"show_text",text:[{text:"Click to see target's ",color:"yellow"},{text:"Spawnpoint",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -4"}}]
tellraw @s [{text:"",color:"yellow"},{text:"[Give Guidebook]",hover_event:{action:"show_text",text:[{text:"Click to give target a ",color:"yellow"},{text:"Guidebook",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -13"}},{text:" "},{text:"[Send Discord Invite]",hover_event:{action:"show_text",text:[{text:"Click to send target a ",color:"yellow"},{text:"Discord",bold:true},{text:" invitation"}]},click_event:{action:"run_command",command:"trigger player_info set -14"}},{text:" "},{text:"[Teleport to Spawn]",hover_event:{action:"show_text",text:[{text:"Click to teleport target to ",color:"yellow"},{text:"Spawn",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -15"}}]

execute if score @s staff_perms matches 2.. run tellraw @s [{text:"",color:"gold"},{text:"[TP]",hover_event:{action:"show_text",text:[{text:"Click to ",color:"gold"},{text:"Teleport",bold:true},{text:" to target"}]},click_event:{action:"run_command",command:"trigger player_info set -16"}},{text:" "},{text:"[TP to Pre-Jail Location]",hover_event:{action:"show_text",text:[{text:"Click to teleport to target's ",color:"gold"},{text:"Pre-Jail Location",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -17"}},{text:" "},{text:"[TP to Last Death Location]",hover_event:{action:"show_text",text:[{text:"Click to teleport to target's ",color:"gold"},{text:"Last Death Location",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -21"}}]
execute if score @s staff_perms matches 3.. run tellraw @s [{text:"",color:"#FB6F00"},{text:"[Take Inventory]",hover_event:{action:"show_text",text:[{text:"Click to take target's ",color:"#FB6F00"},{text:"Inventory",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -18"}},{text:" "},{text:"[Take Ender Chest]",hover_event:{action:"show_text",text:[{text:"Click to take target's ",color:"#FB6F00"},{text:"Ender Chest",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -19"}}]

tellraw @s {text:"=============================",color:"yellow"}

return 0
