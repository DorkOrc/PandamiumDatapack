# arguments: home, home_and_user_id, id

# fail if home does not exist
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{text:"[Homes] ",color:"dark_red"},{text:"",color:"red",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true},{text:" has not set "},{text:"Home $(home)",color:"red",bold:true},{text:"!"}]}]
$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run return 0

# get home name
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value ["",[{text:"",color:"white",italic:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).name",interpret:true}]," (Home $(home))"]

# check if datafixer is running
execute if data storage pandamium:queue entries[{action:"database.datafixer"}] run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" A database migration is currently in progress preventing homes from being modified. Try again in a few minutes.",color:"red"}]

# ask to confirm delete
$execute if score <confirm> variable matches 0 run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"}," Are you sure you want to delete ",{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{storage:"pandamium:temp",nbt:"home_name",interpret:true},"? ",{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to delete ",color:"dark_green"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{storage:"pandamium:temp",nbt:"home_name",interpret:true}]},click_event:{action:"run_command",command:"trigger delhome set -$(home_and_user_id)"}}]
execute if score <confirm> variable matches 0 run return 0

# print success
$execute store result score <dimension> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score
$tellraw @s [{text:"",color:"green"},{text:"[Homes]",color:"dark_green"}," Deleted ",{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{storage:"pandamium:temp",nbt:"home_name",interpret:true}," (previously at ",{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",plain:true,color:"aqua"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]",plain:true,color:"aqua"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]",plain:true,color:"aqua"},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp",interpret:true,color:"aqua"},{text:")!"}]

function pandamium:utils/get/dimension_string_id/from_score
function pandamium:utils/get/username
$function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="staff_deleted_home",data={"username":"'\
        },\
        {\
            storage:"pandamium.db.players:io",nbt:"selected.entry.username",interpret:true\
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
            storage: "pandamium.db.players:io",\
            nbt: "selected.entry.data.homes.$(home).xyzd[0]"\
        },\
        {\
            text: ","\
        },\
        {\
            storage: "pandamium.db.players:io",\
            nbt: "selected.entry.data.homes.$(home).xyzd[1]"\
        },\
        {\
            text: ","\
        },\
        {\
            storage: "pandamium.db.players:io",\
            nbt: "selected.entry.data.homes.$(home).xyzd[2]"\
        },\
        {\
            text: '],"dimension":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "dimension_string_id",\
            interpret: true\
        },\
        {\
            text: '","deleted_by":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "username",\
            interpret: true\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}

# delete in chunk
$execute store result score <x> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[0]
$execute store result score <y> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[1]
$execute store result score <z> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[2]
$execute store result score <d> variable run data get storage pandamium.db.players:io selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/database/regions/load_chunk/from_xzd_scores
$data remove storage pandamium.db.regions:io selected.chunk.entry.homes[{data:[I;$(id),$(home)]}]
function pandamium:utils/database/regions/save

# delete home and home name
$data remove storage pandamium.db.players:io selected.entry.data.homes.$(home)

# remove personal trigger
$function pandamium:impl/database/cache/refresh_personal_home_trigger/main {home:$(home)}

# save
function pandamium:utils/database/players/save
