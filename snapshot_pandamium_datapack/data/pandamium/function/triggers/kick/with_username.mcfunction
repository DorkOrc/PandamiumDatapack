# arguments: username

$execute store success score <target_is_online> variable if entity $(username)

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

execute if score <target_is_online> variable matches 0 run tellraw @s [{text:"[Kick] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:" is not online!",color:"red"}]
execute if score <target_is_online> variable matches 0 run return 0

# do kick
$execute as $(username) run function pandamium:triggers/kick/as_target

function pandamium:utils/get/username
$data modify storage pandamium:local functions."pandamium:triggers/kick/*".log_components set value [{text:'username":"$(username)"'},{text:'"kicked_by":"',extra:[{storage:"pandamium:temp",nbt:"username"},'"']},{text:'"anonymous":false'},{text:'"silent":false'}]
execute if score @s alt_of matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/kick/*".log_components[-2] set value {text:'"anonymous":true'}
execute if score @s silent_punishments matches 1 run data modify storage pandamium:local functions."pandamium:triggers/kick/*".log_components[-1] set value {text:'"silent":true'}
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="kick",data={'\
        },\
        {\
            storage: "pandamium:local",\
            nbt: 'functions."pandamium:triggers/kick/*".log_components[]',\
            interpret: true,\
            separator: ","\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}

# announce kick
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value {selector:"@s"}
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value "a staff member"

execute unless score @s silent_punishments matches 1 run tellraw @a [{text:"[Info] ",color:"dark_aqua"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"aqua"}," was kicked by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"aqua"},"!"]
execute if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was kicked by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"},"'s id is ",{storage:"pandamium.db.players:io",nbt:"selected.entry.id",bold:true},"!"]
