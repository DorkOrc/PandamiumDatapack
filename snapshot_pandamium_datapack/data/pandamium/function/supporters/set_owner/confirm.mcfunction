# arguments: patreon_id, username

$execute unless data storage pandamium:supporters import.users[{patreon_id:"$(patreon_id)"}] run return fail
$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return fail

$function pandamium:utils/database/players/load/from_patreon_id {patreon_id:"$(patreon_id)"}
$execute if data storage pandamium.db.player:io selected.entry{username:"$(username)"} run return fail
$execute if data storage pandamium.db.players:io selected run function pandamium:utils/log {args:{message:[{selector:"@s"}," removed link between Patreon account $(patreon_id) and Minecraft account ",{storage:"pandamium.db.player:io",nbt:"selected.entry.username"}," (",{storage:"pandamium.db.player:io",nbt:"selected.entry.uuid"},")"]}}
data remove storage pandamium.db.players:io selected.entry.patreon_id
function pandamium:supporters/set_owner/__impl__/remove_rank_online with storage pandamium.db.players:io selected.entry
function pandamium:utils/database/players/save

$function pandamium:utils/database/players/load/from_username {username:"$(username)"}
$function pandamium:utils/log {args:{message:[{selector:"@s"}," linked Patreon account $(patreon_id) to Minecraft account $(username) (",{storage:"pandamium.db.player:io",nbt:"selected.entry.uuid"},")"]}}
$tellraw @s [{color:"dark_green",text:"[Supporters] "},{color:"green",text:"Linked $(patreon_id) to $(username)"}]
$data modify storage pandamium.db.players:io selected.entry.patreon_id set value "$(patreon_id)"
$data modify storage pandamium.db.players:data patreon_id_indexes."$(patreon_id)" set from storage pandamium.db.players:io selected.index
$execute as $(username) if predicate pandamium:player/supporter_rank/false run kick @s [User Setup] Your §b[supporter]§r rank has been set to §b§l[true]§r! You may rejoin when ready.
$execute as $(username) run scoreboard players set @s supporter_rank 1
function pandamium:utils/database/players/save
