function pandamium:misc/warp/spawn

tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"[Staff Info] ",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"yellow"},{text:"Spawn",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -1"}},{selector:"@s",color:"gray",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"yellow"},{text:"Spawn",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -1"}},{text:" was teleported to spawn!",color:"gray"}]
scoreboard players reset @s on_join.tp_to_spawn

function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="on_join.tp_to_spawn",data={"username":"'\
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
