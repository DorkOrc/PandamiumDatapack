$execute store success score <target_is_online> variable if entity $(username)

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

$execute store success score <target_is_jailed> variable if score $(username) jailed matches 1..
execute if score <target_is_jailed> variable matches 1 if score <target_is_online> variable matches 1 run tellraw @s [{text:"[Jail] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:" is already jailed! ",color:"red"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"Jail Area",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -101"}}]
execute if score <target_is_jailed> variable matches 1 if score <target_is_online> variable matches 0 run tellraw @s [{text:"[Jail] ",color:"dark_red"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"red"},{text:" is already jailed!",color:"red"}]
execute if score <target_is_jailed> variable matches 1 run return 0

# do jail
$scoreboard players set $(username) jailed 1
$execute unless entity $(username) run scoreboard players set $(username) on_join.tp_to_spawn 1
$execute unless entity $(username) run scoreboard players set $(username) on_join.take_items 1
$execute if score $(username) last_position.x = $(username) last_position.x store result score $(username) pre_jail_pos_x run scoreboard players get $(username) last_position.x
$execute if score $(username) last_position.x = $(username) last_position.x store result score $(username) pre_jail_pos_y run scoreboard players get $(username) last_position.y
$execute if score $(username) last_position.x = $(username) last_position.x store result score $(username) pre_jail_pos_z run scoreboard players get $(username) last_position.z
$execute if score $(username) last_position.x = $(username) last_position.x store result score $(username) pre_jail_pos_d run scoreboard players get $(username) last_position.d
$execute as $(username) run function pandamium:triggers/jail/as_player_if_online

function pandamium:utils/get/username
$data modify storage pandamium:local functions."pandamium:triggers/jail/*".log_components set value [{text:'username":"$(username)"'},{text:'"jailed_by":"',extra:[{storage:"pandamium:temp",nbt:"username"},'"']},{text:'"anonymous":false'},{text:'"silent":false'}]
execute if score @s alt_of matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/jail/*".log_components[-2] set value {text:'"anonymous":true'}
execute if score @s silent_punishments matches 1 run data modify storage pandamium:local functions."pandamium:triggers/jail/*".log_components[-1] set value {text:'"silent":true'}
function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="jail",data={'\
        },\
        {\
            storage: "pandamium:local",\
            nbt: 'functions."pandamium:triggers/jail/*".log_components[]',\
            interpret: true,\
            separator: ","\
        },\
        {\
            text: '}'\
        }\
    ]\
}}

# announce jail
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value {selector:"@s"}
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value "a staff member"

execute if score <target_is_online> variable matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{text:"[Info] ",color:"dark_purple"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"light_purple"}," was jailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"light_purple"},"!"]
execute if score <target_is_online> variable matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was jailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"}," was jailed by ",{storage:"pandamium:temp",nbt:"source",interpret:true,color:"gray"},"!"]

execute if score <target_is_online> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"},"'s id is ",{storage:"pandamium.db.players:io",nbt:"selected.entry.id",bold:true},"! ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"Jail Area",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -101"}}]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{storage:"pandamium:temp",nbt:"target",interpret:true,color:"gray"},"'s id is ",{storage:"pandamium.db.players:io",nbt:"selected.entry.id",bold:true},"!"]

$execute if entity $(username) run tellraw @a[scores={staff_perms=1..}] [{color:"dark_gray",text:"[Staff Info]"},{color:"gray",text:" $(username)'s items were moved to the Staff World."}]
$execute unless entity $(username) run tellraw @a[scores={staff_perms=1..}] [{color:"dark_gray",text:"[Staff Info]"},{color:"gray",text:" $(username)'s items will be moved to the staff world when they next join the server, and they will be teleported to spawn (even if they are no longer jailed)."}]
