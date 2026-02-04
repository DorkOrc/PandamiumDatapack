# arguments: patreon_id, (...)

function pandamium:utils/database/players/load/from_patreon_id with storage pandamium:local functions."pandamium:supporters/config_menu.*".users[-1]

$data modify storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog.body append value {\
    "type": "minecraft:item",\
    "item": {\
        "id": "minecraft:barrier"\
    },\
    "description": {\
        "contents": [\
            "",\
            "\n",\
            [{color:"red",text:"Not Linked"}," ",{color:"blue",shadow_color:0,text:"[Link]",hover_event:{action:"show_text",value:{color:"blue",text:"Click to link this Patreon account to a Minecraft account"}},click_event:{action:"run_command",command:'function pandamium:supporters/set_owner/prompt {patreon_id:"$(patreon_id)"}'}}]\
        ],\
        "width": 300\
    },\
    "show_tooltip": false\
}

execute store result score <whole_euros> variable store result score <remaining_euro_cents> variable run data get storage pandamium:local functions."pandamium:supporters/config_menu.*".users[-1].last_payment.amount_in_euros 100
scoreboard players operation <whole_euros> variable /= #100 constant
scoreboard players operation <remaining_euro_cents> variable %= #100 constant
execute store result storage pandamium:temp cents int 1 run scoreboard players add <remaining_euro_cents> variable 100
data modify storage pandamium:temp cents set string storage pandamium:temp cents -2

function pandamium:utils/resolve_text_component {text_component:["",{underlined:true,storage:"pandamium:local",nbt:'functions."pandamium:supporters/config_menu.*".users[-1].patreon_name'},"\n",[{color:"gray",text:"("},{storage:"pandamium:local",nbt:'functions."pandamium:supporters/config_menu.*".users[-1].patreon_id'},")"],"\nExpires: ",{storage:"pandamium:local",nbt:'functions."pandamium:supporters/config_menu.*".users[-1].end_date[]',separator:"-"},"\n",[{color:"dark_gray",italic:true,text:"Last Payment: "},{storage:"pandamium:local",nbt:'functions."pandamium:supporters/config_menu.*".users[-1].last_payment.date[]',separator:"-"}," ",[{text:"(",hover_event:{action:"show_text",value:["€",{score:{name:"<whole_euros>",objective:"variable"}},".",{storage:"pandamium:temp",nbt:"cents"}]}},{storage:"pandamium:local",nbt:'functions."pandamium:supporters/config_menu.*".users[-1].last_payment.months_granted'}," months)"]]],write_to:'storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog.body[-1].description.contents[0]'}
execute if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog.body[-1].item.id set value "minecraft:player_head"
execute if data storage pandamium.db.players:io selected run data modify storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog.body[-1].item.components."minecraft:profile" set from storage pandamium.db.players:io selected.entry.username
execute if data storage pandamium.db.players:io selected run function pandamium:utils/resolve_text_component {text_component:[{color:"green",text:"Linked to "},{storage:"pandamium.db.players:io",nbt:"selected.entry.username"},"'s Minecraft account"],write_to:'storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog.body[-1].description.contents[2][0]'}

data remove storage pandamium:local functions."pandamium:supporters/config_menu.*".users[-1]
execute if data storage pandamium:local functions."pandamium:supporters/config_menu.*".users[0] run function pandamium:supporters/config_menu/loop with storage pandamium:local functions."pandamium:supporters/config_menu.*".users[-1]
