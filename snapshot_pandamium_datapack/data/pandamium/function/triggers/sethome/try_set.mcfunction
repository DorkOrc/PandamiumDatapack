# arguments: home, id

# get home name
function pandamium:utils/database/players/load/self
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]," (Home $(home))"]

# check if datafixer is running
execute if data storage pandamium:queue entries[{action:"database.datafixer"}] run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" A database migration is currently in progress preventing homes from being modified. Try again in a few minutes.",color:"red"}]

# ask to confirm replace
$execute if score <do_replace> variable matches 0 if data storage pandamium.db.players:io selected.entry.data.homes.$(home) unless data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"},{text:" Are you sure you want to replace "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to replace ",color:"dark_green"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger sethome set -$(home)"}}]
$execute if score <do_replace> variable matches 0 unless score <home> variable matches 0..9 if data storage pandamium.db.players:io selected.entry.data.homes.$(home) if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"},{text:" Are you sure you want to replace "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to replace ",color:"dark_green"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger sethome set -$(home)"}},{text:" "},{text:"[✔]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to replace ",color:"yellow"},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"\nbut keep the name"}]},click_event:{action:"run_command",command:"trigger sethome set -1$(home)"}}]
$execute if score <do_replace> variable matches 0 if score <home> variable matches 0..9 if data storage pandamium.db.players:io selected.entry.data.homes.$(home) if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"},{text:" Are you sure you want to replace "},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to replace ",color:"dark_green"},{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger sethome set -$(home)"}},{text:" "},{text:"[✔]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to replace ",color:"yellow"},{storage:"pandamium:temp",nbt:"home_name",interpret:true},{text:"\nbut keep the name"}]},click_event:{action:"run_command",command:"trigger sethome set -10$(home)"}}]
$execute if score <do_replace> variable matches 0 if data storage pandamium.db.players:io selected.entry.data.homes.$(home) run return 0

# delete in chunk
$execute store result score <x> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <y> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <z> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <d> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/database/regions/load_chunk/from_xzd_scores
$data remove storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}]
function pandamium:utils/database/regions/save

# reset name
$execute if score <delete_name> variable matches 1 run data remove storage pandamium.db.players:io selected.entry.data.homes.$(home).name
$execute if score <delete_name> variable matches 1 run data remove storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name
$execute if score <delete_name> variable matches 1 run data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if score <delete_name> variable matches 1 run function pandamium:impl/database/cache/refresh_personal_home_trigger/main {home:$(home)}

# set xyz, dimension, and hour id
function pandamium:utils/get/position
$data modify storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd set value [I;0,0,0,0]
$execute store result storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[0] int 1 run scoreboard players get <x> variable
$execute store result storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[1] int 1 run scoreboard players get <y> variable
$execute store result storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[2] int 1 run scoreboard players get <z> variable
$execute store result storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3] int 1 store result score <dimension> variable store result score <d> variable run function pandamium:utils/get/dimension_id
$execute store result storage pandamium.db.players:io selected.entry.data.homes.$(home).hour_id int 1 run scoreboard players get <hour_id> global

# append to chunk
function pandamium:utils/database/regions/load_chunk/from_xzd_scores
$data modify storage pandamium.db.regions:io selected.chunk.entry.homes append value {data:[I;$(id),$(home)],xyz:[I;0,0,0],time:0}
execute store result storage pandamium.db.regions:io selected.chunk.entry.homes[-1].time int 1 run scoreboard players get <hour_id> global
execute store result storage pandamium.db.regions:io selected.chunk.entry.homes[-1].xyz[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium.db.regions:io selected.chunk.entry.homes[-1].xyz[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium.db.regions:io selected.chunk.entry.homes[-1].xyz[2] int 1 run scoreboard players get <z> variable
function pandamium:utils/database/regions/save

# print success
function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run tellraw @s [{color:"green",text:""},{color:"dark_green",text:"[Homes]"}," Set ",{storage:"pandamium:temp",nbt:"home_name",interpret:true}," at ",{color:"aqua",storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]"}," ",{color:"aqua",storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"}," ",{color:"aqua",storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"}," in ",{color:"aqua",nbt:"dimension_name",storage:"pandamium:temp"},"!"]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{color:"green",text:""},{color:"dark_green",text:"[Homes]"}," Set ",{storage:"pandamium:temp",nbt:"home_name",interpret:true}," at ",{color:"aqua",storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",obfuscated:true,extra:[" ",{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"}," ",{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"}]}," in ",{color:"aqua",nbt:"dimension_name",storage:"pandamium:temp"},"!"]

function pandamium:utils/get/dimension_string_id/from_position
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="player_set_home",data={"username":"'\
        },\
        {\
            storage:"pandamium.db.players:io",nbt:"selected.entry.username"\
        },\
        {\
            text: '","slot":'\
        },\
        {\
            score: {\
                name: "<home>",\
                objective: "variable"\
            }\
        },\
        {\
            text: ',"pos":['\
        },\
        {\
            score: {\
                name: "<x>",\
                objective: "variable"\
            }\
        },\
        {\
            text: ","\
        },\
        {\
            score: {\
                name: "<y>",\
                objective: "variable"\
            }\
        },\
        {\
            text: ","\
        },\
        {\
            score: {\
                name: "<z>",\
                objective: "variable"\
            }\
        },\
        {\
            text: '],"dimension":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "dimension_string_id"\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}

# save
function pandamium:utils/database/players/save
