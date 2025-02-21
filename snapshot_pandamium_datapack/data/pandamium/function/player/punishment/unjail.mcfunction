function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="unjail",data={"username":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "username"\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}

scoreboard players reset @s jailed
scoreboard players reset @s cheater

function pandamium:misc/warp/spawn

function pandamium:player/update_tablist_value
