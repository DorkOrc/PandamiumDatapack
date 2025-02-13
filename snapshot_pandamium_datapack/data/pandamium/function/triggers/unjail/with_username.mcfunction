$execute store success score <target_is_online> variable if entity $(username)

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

$execute store success score <target_is_jailed> variable if score $(username) jailed matches 1..
execute if score <target_is_jailed> variable matches 0 run tellraw @s [{text:"[Unjail] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:" is not jailed!",color:"red"}]
execute if score <target_is_jailed> variable matches 0 run return 0

# do unjail
$scoreboard players reset $(username) jailed
$scoreboard players reset $(username) cheater
$execute as $(username) run function pandamium:triggers/unjail/as_player_if_online

function pandamium:utils/get/username
$data modify storage pandamium:local functions."pandamium:triggers/unjail/*".log_components set value [{text:'username":"$(username)"'},{text:'"unjailed_by":"',extra:[{storage:"pandamium:temp",nbt:"username"},'"']},{text:'"anonymous":false'},{text:'"silent":false'}]
execute if score @s alt_of matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/unjail/*".log_components[-2] set value {text:'"anonymous":true'}
execute if score @s silent_punishments matches 1 run data modify storage pandamium:local functions."pandamium:triggers/unjail/*".log_components[-1] set value {text:'"silent":true'}
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="unjail",data={'\
        },\
        {\
            storage: "pandamium:local",\
            nbt: 'functions."pandamium:triggers/unjail/*".log_components[]',\
            interpret: true,\
            separator: ","\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}

# announce unjail
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value {selector:"@s"}
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value "a staff member"

execute if score <target_is_online> variable matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{text:"[Info] ",color:"dark_purple"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"light_purple"}," was unjailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"light_purple"},"!"]
execute if score <target_is_online> variable matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was unjailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was unjailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"},"'s id is ",{storage:"pandamium.db.players:io",nbt:"selected.entry.id",bold:true},"!"]
