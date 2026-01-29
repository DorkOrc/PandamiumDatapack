# arguments: username

data remove storage pandamium:temp display_name

$execute store result storage pandamium:local functions."pandamium:utils/get/display_name/*".id int 1 store result score <id> variable run scoreboard players get $(username) id
execute store success score <player_is_online> variable if entity @a[limit=1,predicate=pandamium:matches_id,predicate=!pandamium:player/is_vanished]

execute if score <player_is_online> variable matches 0 run function pandamium:utils/get/username/from_id with storage pandamium:local functions."pandamium:utils/get/display_name/*"
execute if score <player_is_online> variable matches 0 unless data storage pandamium:temp username run return fail
execute if score <player_is_online> variable matches 0 run data modify storage do:io input set value ["",{storage:"pandamium:temp",nbt:"username",interpret:true,extra:[{color:"gray",text:" (Offline)"}],hover_event:{action:"show_text",value:{color:"gray",text:"Shift+Click to insert User ID"}}}]
execute if score <player_is_online> variable matches 1 run data modify storage do:io input set value ["",{selector:"@a[predicate=pandamium:matches_id,limit=1]"}]
data modify storage do:io input[].insertion set string storage pandamium:local functions."pandamium:utils/get/display_name/*".id

function do:text/resolve
data modify storage pandamium:temp display_name set from storage do:io output
