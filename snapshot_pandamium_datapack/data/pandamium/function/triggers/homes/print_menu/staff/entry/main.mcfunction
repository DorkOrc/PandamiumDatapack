$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score

$execute store result storage pandamium:temp arguments.home int 1 run scoreboard players set <user_and_home_id> variable $(home)
scoreboard players operation <user_and_home_id> variable *= #1000000 constant
execute store result storage pandamium:temp arguments.user_and_home_id int 1 run scoreboard players operation <user_and_home_id> variable += <user_id> variable

$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true,hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s\n",{text:"Home $(home)",bold:true}]}}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true,hover_event:{action:"show_text",value:[{text:"Click to teleport to\n",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"Home $(home)",bold:true}]}}]]

data modify storage pandamium:temp home_plain_name_info set value ""
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_plain_name_info set value [{text:"\nid: ",color:"dark_gray"},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).plain_name"}]

scoreboard players set <hour_id> variable 0
$execute store result score <hour_id> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).hour_id
function pandamium:utils/get/date/from_hour_id_score
execute if score <hour_id> variable matches 1.. run data modify storage pandamium:temp date_set_tooltip set value ["Time Set:\n",{score:{name:"<day>",objective:"variable"},color:"gray",extra:["/",{score:{name:"<month>",objective:"variable"}},"/",{score:{name:"<year>",objective:"variable"}}," at ≈",{score:{name:"<hour>",objective:"variable"}},":00"]}]
execute unless score <hour_id> variable matches 1.. run data modify storage pandamium:temp date_set_tooltip set value ["Time Set:\n",{text:"Before 22/05/2024",color:"gray"}]

execute if score @s staff_perms matches 1 run function pandamium:triggers/homes/print_menu/staff/entry/helper with storage pandamium:temp arguments
execute if score @s staff_perms matches 2 run function pandamium:triggers/homes/print_menu/staff/entry/moderator with storage pandamium:temp arguments
execute if score @s staff_perms matches 3.. run function pandamium:triggers/homes/print_menu/staff/entry/srmod with storage pandamium:temp arguments
