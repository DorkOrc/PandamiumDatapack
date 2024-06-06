# arguments: username

$execute store result storage pandamium:temp arguments.id int 1 store result score <id> variable run scoreboard players get $(username) id
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
$execute unless data storage pandamium.db.players:io selected run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" Failed load player entry for \"$(username)\"!","color":"red"}]
execute unless data storage pandamium.db.players:io selected run return fail

$execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" $(username) is not blacklisted!","color":"red"}]
execute unless data storage pandamium.db.players:io selected.entry.data.leader_board_data{blacklisted:1b} run return fail

data remove storage pandamium.db.players:io selected.entry.data.leader_board_data.blacklisted
function pandamium:utils/database/players/save

$tellraw @s [{"text":"[admin]","color":"dark_green"},{"text":" Removed $(username) from the leader board blacklist! Refresh all leader boards to update their place on each leader boards.","color":"green"}]
