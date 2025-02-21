function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="kick",data={"username":"'\
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
kick @s[type=player] You were kicked by a staff member!
