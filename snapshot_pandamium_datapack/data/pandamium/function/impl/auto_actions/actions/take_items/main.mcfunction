scoreboard players set <take_items.items_taken> variable 0
function pandamium:player/take_items/inventory
scoreboard players operation <take_items.items_taken> variable += <item_count> variable
function pandamium:player/take_items/enderchest
scoreboard players operation <take_items.items_taken> variable += <item_count> variable

execute if score <take_items.items_taken> variable matches 1.. run function pandamium:impl/auto_actions/actions/take_items/log

tellraw @a[scores={staff_perms=1..}] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{color:"gray",text:"'s items were taken! (",extra:[{score:{name:"<take_items.items_taken>",objective:"variable"}},") "]},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"Staff World",bold:true}]},click_event:{action:"run_command",command:"trigger staff_world"}}]
scoreboard players reset @s on_join.take_items

function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="on_join.take_items",data={"username":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "username"\
        },\
        {\
            text: '","items_taken":'\
        },\
        {\
            score: {\
                name: "<take_items.items_taken>",\
                objective: "variable"\
            }\
        },\
        {\
            text: '}'\
        }\
    ]\
}}
