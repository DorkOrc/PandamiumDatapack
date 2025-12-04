execute in minecraft:overworld run spawnpoint @s -289 127 174 0 0

tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray",extra:["'s"]},{text:" spawnpoint was reset!",color:"gray"}]
scoreboard players reset @s on_join.reset_spawnpoint

function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="on_join.reset_spawnpoint",data={"username":"'\
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
