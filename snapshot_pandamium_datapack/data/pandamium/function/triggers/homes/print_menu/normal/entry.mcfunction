$execute store success score <home_is_set> variable if data storage pandamium.db.players:io selected.entry.data.homes.$(home)
$scoreboard players set <home> variable $(home)

# if unset, add number to list and print (conditionally) basic entry
$execute if score <home_is_set> variable matches 0 if score <home> variable <= @s available_homes run data modify storage pandamium:temp unset_homes append value "$(home)"
$execute if score <home_is_set> variable matches 0 if score <home> variable <= @s available_homes unless score @s hide_unset_homes matches 1 run tellraw @s [{text:"",color:"green"},{text:"[+]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to set ",color:"dark_green"},{text:"Home $(home)",bold:true},{text:" at your\nlocation"}]},click_event:{action:"run_command",command:"trigger sethome set $(home)"}},{text:" "},{text:"Home $(home): ",bold:true},{text:"Not Set",color:"gray"}]
execute if score <home_is_set> variable matches 0 run return 0

# setup
$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score

data modify storage pandamium:temp home_name set value [{text:"Home ",bold:true},{score:{name:"<home>",objective:"variable"}}]
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]]

execute if score @s show_home_numbers matches 1 run data modify storage pandamium:temp home_number_prefix set value [{score:{name:"<home>",objective:"variable"},color:"green"},": "]
execute if score @s show_home_numbers matches 1 if score <home> variable > @s available_homes run data modify storage pandamium:temp home_number_prefix set value [{score:{name:"<home>",objective:"variable"},color:"gray"},": "]

data modify storage pandamium:temp home_plain_name_info set value ""
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_plain_name_info set value [{text:"\nid: ",color:"dark_gray"},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).plain_name"}]

# print
$execute unless score @s available_homes matches $(home).. unless score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"#B7B7B7"},{text:"[🗑]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_red"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set $(home)"}},{text:" "},{storage:"pandamium:temp",nbt:"home_number_prefix",interpret:true},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:" "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:[{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",color:"gray"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp"},{text:"\nHome $(home)",color:"dark_gray"}]}}]
$execute unless score @s available_homes matches $(home).. if score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"#B7B7B7"},{text:"[🗑]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_red"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set $(home)"}},{text:" "},{storage:"pandamium:temp",nbt:"home_number_prefix",interpret:true},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:" "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:[{nbt:"dimension_name",storage:"pandamium:temp",color:"gray"},{text:"\nHome $(home)",color:"dark_gray"}]}}]

$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"green"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger home set $(home)"}},{text:" "},{text:"[🗑]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_red"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set $(home)"}},{text:" "},{text:"[✎]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to rename ",color:"yellow"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger namehome set $(home)"}},{text:" "},{storage:"pandamium:temp",nbt:"home_number_prefix",interpret:true},{storage:"pandamium:temp",nbt:"home_name",interpret:true,hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger home set $(home)"}},{text:" "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:[{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",color:"aqua"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp"},{text:"\nHome $(home)",color:"dark_gray"},{storage:"pandamium:temp",nbt:"home_plain_name_info",interpret:true}]}}]
$execute if score @s hide_coordinates matches 1 run return run tellraw @s [{text:"",color:"green"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger home set $(home)"}},{text:" "},{text:"[🗑]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_red"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set $(home)"}},{text:" "},{text:"[✎]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to rename ",color:"yellow"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger namehome set $(home)"}},{text:" "},{storage:"pandamium:temp",nbt:"home_number_prefix",interpret:true},{storage:"pandamium:temp",nbt:"home_name",interpret:true,hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger home set $(home)"}},{text:" "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",value:[{nbt:"dimension_name",storage:"pandamium:temp",color:"aqua"},{text:"\nHome $(home)",color:"dark_gray"},{storage:"pandamium:temp",nbt:"home_plain_name_info",interpret:true}]}}]
