tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," was automatically jailed for ",{nbt:"reason",storage:"pandamium:auto_actions",bold:true},"!"]
tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},"'s id is ",{score:{objective:"id",name:"@s"},bold:true},"!"]
playsound entity.experience_orb.pickup master @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

tellraw @s [{text:"",color:"gray"},{text:"[Staff Info]",color:"dark_gray"}," You were automatically jailed for ",{nbt:"reason",storage:"pandamium:auto_actions",bold:true},"!"]

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
            nbt: "username"\
        },\
        '","reason":"',\
        {\
            nbt: "reason",\
            storage: "pandamium:auto_actions"\
        },\
        '"}'\
    ]\
}}

function pandamium:impl/auto_actions/actions/auto_jail/log
