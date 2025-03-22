advancement revoke @s only pandamium:detect/set_spawnpoint

function pandamium:detect/set_spawnpoint/refresh

execute unless score @s spawnpoint_d = @s spawnpoint_d run return 1

scoreboard players operation <dimension> variable = @s spawnpoint_d
function pandamium:utils/get/username
function pandamium:utils/get/dimension_string_id/from_score
function pandamium:utils/log {args:{message:[\
    {\
        storage: "pandamium:temp",\
        nbt: "username"\
    },\
    " set their spawnpoint at ",\
    {\
        score: {\
            name: "@s",\
            objective: "spawnpoint_x"\
        }\
    },\
    " ",\
    {\
        score: {\
            name: "@s",\
            objective: "spawnpoint_y"\
        }\
    },\
    " ",\
    {\
        score: {\
            name: "@s",\
            objective: "spawnpoint_y"\
        }\
    },\
    " in ",\
    {\
        storage: "pandamium:temp",\
        nbt: "dimension_string_id"\
    },\
]}}
