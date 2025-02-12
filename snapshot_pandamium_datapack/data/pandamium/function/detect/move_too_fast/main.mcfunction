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
            text: '"}'\
        }\
    ]\
}}

execute if score @s gameplay_rank matches 0..1 run tellraw @a[scores={staff_rank=1..,optn.experimental.speed_hack_indicator=1..2}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{selector:"@s"}," is moving very fast!"]]
execute if score @s gameplay_rank matches 2.. run tellraw @a[scores={staff_rank=1..,optn.experimental.speed_hack_indicator=1}] [{color:"dark_gray",text:"[Staff Info]"},[{color:"gray",text:" "},{selector:"@s"}," is moving very fast!"]]
