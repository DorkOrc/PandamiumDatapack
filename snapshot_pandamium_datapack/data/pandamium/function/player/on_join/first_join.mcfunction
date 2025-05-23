# log first join
function pandamium:utils/log {args:{message:[{text:'event="first_join",data={"username":"'},{selector:"@s"},{text:'"}'}]}}

# teleport to spawn
execute if entity @s[predicate=pandamium:in_spawn] run function pandamium:misc/warp/spawn

# give guidebook
loot give @s loot pandamium:items/custom/guidebook

# welcome messages
title @s title [{font:"minecraft:uniform",text:"🐼 "},{bold:true,text:"Welcome to Pandamium"}," 🐼"]
title @s subtitle "Please read the Rules"
execute at @s run tellraw @a[distance=0.01..] [{color:"blue",text:"[Pandamium]"},[{color:"aqua",text:" "},{selector:"@s"}," joined the server for the first time!"]]
function pandamium:player/on_join/print_welcome
execute if score <month> global matches 6 run function pandamium:player/on_join/notices/pride_month

# inform about name change if outside of spawn
execute unless entity @s[predicate=pandamium:in_spawn] run tellraw @s [{text:"",color:"#ffadb1"},{text:"[Name Change Notice]",color:"#FF424D"}," If you have changed your username since you last joined this server, you may need a staff member to transfer data such as homes, playtime, and reward credits to your new username. If so, please contact staff on our ",{nbt:"hyperlink.discord",storage:"pandamium:dictionary",interpret:true},{text:" server."}]
execute unless entity @s[predicate=pandamium:in_spawn] run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info]",color:"dark_gray"}," ",{selector:"@s",color:"gray"}," may have changed their username."]

# inform staff
tellraw @a[scores={staff_perms=1}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},"'s id is ",{score:{objective:"id",name:"@s"},bold:true},"! ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"Spawn",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -1"}}]
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:player/on_join/print_id_and_teleport with storage pandamium:templates macro.id
execute as @a[scores={staff_perms=1..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

# prevent old player notices
scoreboard players set <prevent_old_player_notices> variable 1

# ensure playtime_ticks is at least 1
scoreboard players add @s playtime_ticks 1

# set first join
function pandamium:utils/datetime/get_current_datetime_id
scoreboard players operation @s first_joined.datetime = <datetime_id> variable
