# arguments: home

$execute store success score <home_is_set> variable if data storage pandamium.db.players:io selected.entry.data.homes.$(home)
$scoreboard players set <home> variable $(home)

# if unset, do not list (but mark NEW HOME button to appear if available)
execute if score <home_is_set> variable matches 0 if score <home> variable <= @s available_homes run scoreboard players set <has_available_home_slot> variable 1
execute if score <home_is_set> variable matches 0 run return 0

# set up text
$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score

data modify storage pandamium:local functions."pandamium:triggers/homes/*".home_name set value [{text:"Home ",bold:true},{score:{name:"<home>",objective:"variable"}}]
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:local functions."pandamium:triggers/homes/*".home_name set value [{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]

data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip set value []
data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip append value ["Home Slot: ",{score:{name:"<home>",objective:"variable"}}]

$execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip_position_values set from storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd
execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip append value ["Position: ",{}," ",{}," ",{}]
execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip[-1][1].text set string storage pandamium:local functions."pandamium:triggers/homes/*".tooltip_position_values[0]
execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip[-1][3].text set string storage pandamium:local functions."pandamium:triggers/homes/*".tooltip_position_values[1]
execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip[-1][5].text set string storage pandamium:local functions."pandamium:triggers/homes/*".tooltip_position_values[2]
execute unless score @s hide_coordinates matches 1 run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip append value ["Dimension: ",{storage:"pandamium:temp",nbt:"dimension_name",interpret:true}]
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:local functions."pandamium:triggers/homes/*".tooltip append value ["ID: ",{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).plain_name",interpret:true}]

# append buttons
$data modify storage pandamium:local functions."pandamium:triggers/homes/*".dialog.actions append value {label:"",tooltip:"",action:{type:"minecraft:run_command",command:"trigger home set $(home)"}}
function pandamium:utils/resolve_text_component {text_component:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/homes/*".home_name',interpret:true},write_to:'storage pandamium:local functions."pandamium:triggers/homes/*".dialog.actions[-1].label'}
function pandamium:utils/resolve_text_component {text_component:{color:"dark_gray",storage:"pandamium:local",nbt:'functions."pandamium:triggers/homes/*".tooltip[]',interpret:true,separator:"\n"},write_to:'storage pandamium:local functions."pandamium:triggers/homes/*".dialog.actions[-1].tooltip'}

$data modify storage pandamium:local functions."pandamium:triggers/homes/*".dialog.actions append value {label:{player:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ0NzVjNmE5ODI4NmM2ZmI2YTgwZTNhMzZlNTA1NzgxODIxY2MzYTY5N2RiYmQwNWQ2Nzk5MjYwMTY5YTljZiJ9fX0="}]},color:"#FFFFFF",shadow_color:0},tooltip:"Click to edit home $(home)",width:20,action:{type:"minecraft:show_dialog",dialog:\
  {type:"minecraft:multi_action",title:"Editing Home $(home)",exit_action:{label:{translate:"gui.done"}},columns:1,actions:[{label:"Name Home",action:{type:"minecraft:run_command",command:"trigger namehome set $(home)"}},{label:"Reset Name",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:confirmation",title:"Editing Home $(home)",body:{type:"minecraft:plain_message",contents:"Are you sure you want to remove home $(home)'s name?\n\nThe name will be reverted to \"Home $(home)\". This cannot be reversed.",width:400},after_action:"wait_for_response",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger homes set -$(home)000003"}},no:{label:{translate:"gui.no"},action:{type:"minecraft:run_command",command:"trigger homes set 1"}}}}},{label:"Replace Location",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:confirmation",title:"Editing Home $(home)",body:{type:"minecraft:plain_message",contents:"Are you sure you want to replace home $(home)?\n\nThe location of this home will be permanently changed to be where you are currently standing. This cannot be reversed.",width:400},after_action:"wait_for_response",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger homes set -$(home)000001"}},no:{label:{translate:"gui.no"},action:{type:"minecraft:run_command",command:"trigger homes set 1"}}}}},{label:"Delete Home",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:confirmation",title:"Editing Home $(home)",body:{type:"minecraft:plain_message",contents:"Are you sure you want to delete home $(home)?\n\nThis home will be permanently erased. This cannot be reversed.",width:400},after_action:"wait_for_response",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger homes set -$(home)000002"}},no:{label:{translate:"gui.no"},action:{type:"minecraft:run_command",command:"trigger homes set 1"}}}}}]}\
}}
