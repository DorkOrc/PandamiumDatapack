execute at @s run function pandamium:utils/get/position
execute at @s run function pandamium:utils/get/dimension_string_id/from_position

function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="zooming_player",data={"username":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "username"\
        },\
        {\
            text: '","pos":['\
        },\
        {\
            score: {\
                name: "<x>",\
                objective: "variable"\
            }\
        },\
        {\
            text: ','\
        },\
        {\
            score: {\
                name: "<y>",\
                objective: "variable"\
            }\
        },\
        {\
            text: ','\
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

execute if predicate pandamium:player/gameplay_rank/guest run return run tellraw @a[predicate=pandamium:player/min_staff_perms/helper,scores={optn.experimental.speed_hack_indicator=1..2}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{selector:"@s"}," is moving very fast!"]]
execute if predicate pandamium:player/gameplay_rank/player run return run tellraw @a[predicate=pandamium:player/min_staff_perms/helper,scores={optn.experimental.speed_hack_indicator=1..2}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{selector:"@s"}," is moving very fast!"]]
tellraw @a[predicate=pandamium:player/min_staff_perms/helper,scores={optn.experimental.speed_hack_indicator=1}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{selector:"@s"}," is moving very fast!"]]
