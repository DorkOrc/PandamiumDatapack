# arguments: username

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},': admin player/set_leader_board_blacklisted/true {username:"$(username)"}]']

# load database entry for target
$execute store result storage pandamium:local functions."pandamium:admin/player/set_leader_board_blacklisted/*".id int 1 store result score <id> variable run scoreboard players get $(username) id
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:admin/player/set_leader_board_blacklisted/*"
$execute unless data storage pandamium.db.players:io selected run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:' Failed load player entry for "$(username)"!'}]
execute unless data storage pandamium.db.players:io selected run return fail

# fail if target is already blacklisted
$execute if data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:" $(username) is already blacklisted!"}]
execute if data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run return fail

# add target to blacklist
data modify storage pandamium.db.players:io selected.entry.data.leader_board_data.blacklisted set value 1b
execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:' An error occurred whilst trying to modify player data!'}]
execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run return fail
function pandamium:utils/database/players/save

# update target's place in all leader boards
$function pandamium:utils/leader_board/update_place/all/from_username {username:"$(username)"}

# feedback
$tellraw @s [{color:"dark_green",text:"[admin]"},{color:"green",text:" Added $(username) to the leader board blacklist! Refresh all leader boards to remove them from any they're on."}]
