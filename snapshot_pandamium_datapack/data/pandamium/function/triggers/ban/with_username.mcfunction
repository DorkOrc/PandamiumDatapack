# arguments: username, id

$execute store success score <target_is_online> variable if entity $(username)

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

execute if score <target_is_online> variable matches 0 run return run tellraw @s [{text:"[Ban] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:" is not online! Alert a senior moderator, admin, or owner to have this player banned.",color:"red"}]

$execute store success score <target_ranked_equal_or_above> variable if score $(username) staff_rank >= @s staff_perms
execute if score <target_ranked_equal_or_above> variable matches 1 run return run tellraw @s [{text:"[Ban]",color:"dark_red"},{text:" You may not ban ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:"!",color:"red"}]

$execute if score <confirm_ban> variable matches 0 run return run tellraw @s [{text:"[Ban] ",color:"dark_red"},{text:" Are you sure you want to ban ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:"? ",color:"red"},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to ban ",color:"dark_green"},{storage:"pandamium:temp",nbt:"target",interpret:true}]},click_event:{action:"run_command",command:"trigger ban set -$(id)"}}]

# do ban
$execute as $(username) run function pandamium:triggers/ban/as_target

function pandamium:utils/get/username
$data modify storage pandamium:local functions."pandamium:triggers/ban/*".log_components set value [{text:'username":"$(username)"'},{text:'"banned_by":"',extra:[{storage:"pandamium:temp",nbt:"username"},'"']},{text:'"anonymous":false'},{text:'"silent":false'}]
execute if score @s alt_of matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/ban/*".log_components[-2] set value {text:'"anonymous":true'}
execute if score @s silent_punishments matches 1 run data modify storage pandamium:local functions."pandamium:triggers/ban/*".log_components[-1] set value {text:'"silent":true'}
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="ban",data={'\
        },\
        {\
            storage: "pandamium:local",\
            nbt: 'functions."pandamium:triggers/ban/*".log_components[]',\
            interpret: true,\
            separator: ","\
        },\
        {\
            text: '}'\
        }\
    ]\
}}

# announce ban
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value {selector:"@s"}
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value "a staff member"

execute unless score @s silent_punishments matches 1 run tellraw @a [{text:"[Info] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"}," was banned by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"red"},"!"]
execute if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was banned by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"},"'s id is ",{storage:"pandamium.db.players:io",nbt:"selected.entry.id",bold:true},"!"]
