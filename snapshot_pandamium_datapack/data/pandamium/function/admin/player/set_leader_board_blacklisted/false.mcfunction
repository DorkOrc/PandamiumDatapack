# arguments: username

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},': admin player/set_leader_board_blacklisted/false {username:"$(username)"}]']

# load database entry for target
$execute store result storage pandamium:local functions."pandamium:admin/player/set_leader_board_blacklisted/*".id int 1 store result score <id> variable run scoreboard players get $(username) id
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:admin/player/set_leader_board_blacklisted/*"
$execute unless data storage pandamium.db.players:io selected run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:' Failed load player entry for "$(username)"!'}]
execute unless data storage pandamium.db.players:io selected run return fail

# fail if target is already not blacklisted
$execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:" $(username) is not blacklisted!"}]
execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run return fail

# remove target from blacklist
data remove storage pandamium.db.players:io selected.entry.data.leader_board_data.blacklisted
execute store result score <compound_size> variable run data get storage pandamium.db.players:io selected.entry.data.leader_board_data
execute if score <compound_size> variable matches 0 run data remove storage pandamium.db.players:io selected.entry.data.leader_board_data
function pandamium:utils/database/players/save

# update target's place in all leader boards
$function pandamium:utils/leader_board/update_place/all/from_username {username:"$(username)"}

# feedback
$tellraw @s [{color:"dark_green",text:"[admin]"},{color:"green",text:" Removed $(username) from the leader board blacklist! Refresh all leader boards to update their place on each leader boards."}]
