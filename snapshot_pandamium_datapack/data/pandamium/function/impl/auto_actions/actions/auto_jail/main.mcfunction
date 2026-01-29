tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," was automatically jailed for ",{nbt:"reason",storage:"pandamium:auto_actions",interpret:true,bold:true},"!"]
tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},"'s id is ",{score:{objective:"id",name:"@s"},bold:true},"!"]
playsound entity.experience_orb.pickup master @a[predicate=pandamium:player/min_staff_perms/helper] ~ ~ ~ 1 2 1

tellraw @s [{text:"",color:"gray"},{text:"[Staff Info]",color:"dark_gray"}," You were automatically jailed for ",{nbt:"reason",storage:"pandamium:auto_actions",interpret:true,bold:true},"!"]

data modify storage pandamium:local functions."pandamium:impl/auto_actions/actions/auto_jail/main".args set value {source:{type:"auto_jail"},announce:false}
data modify storage pandamium:local functions."pandamium:impl/auto_actions/actions/auto_jail/main".args.source.reason set from storage pandamium:auto_actions reason
execute store result storage pandamium:local functions."pandamium:impl/auto_actions/actions/auto_jail/main".args.target int 1 run scoreboard players get @s id
function pandamium:player/punishment/jail with storage pandamium:local functions."pandamium:impl/auto_actions/actions/auto_jail/main"
scoreboard players set @s cheater 1

function pandamium:utils/log {args:{message:\
    [\
        'event="auto_jail",data={"username":"',\
        {\
            storage: "pandamium:temp",\
            nbt: "username",\
            interpret: true\
        },\
        '","reason":"',\
        {\
            nbt: "reason",\
            storage: "pandamium:auto_actions",\
            interpret: true\
        },\
        '"}'\
    ]\
}}

function pandamium:impl/auto_actions/actions/auto_jail/log
