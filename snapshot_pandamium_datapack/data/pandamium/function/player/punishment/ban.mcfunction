function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="ban",data={"username":"'\
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

tag @s remove target
ban @s[type=player] You were banned by a staff member! If you think this is a mistake or would like to appeal, contact a member of staff at our discord server: §b§ldiscord.pandamium.eu§r
