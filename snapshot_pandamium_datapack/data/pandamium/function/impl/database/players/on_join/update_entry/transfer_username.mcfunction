# arguments: old_username, new_username, old_username_lowercase, new_username_lowercase

$data remove storage pandamium.db.players:data username_indexes.$(old_username)
$data modify storage pandamium.db.players:data username_indexes.$(new_username) set value $(index)

$data remove storage pandamium.db.players:data lowercase_username_indexes.$(old_username_lowercase)
$data modify storage pandamium.db.players:data lowercase_username_indexes.$(new_username_lowercase) set value $(index)

$function pandamium:impl/usernames_map/remove_name/main {username:"$(old_username)"}
$function pandamium:impl/usernames_map/add_name/main {name:"$(new_username)"}

$function pandamium:impl/transfer_player_data/main {old:"$(old_username)",new:"$(new_username)"}
$function pandamium:impl/auto_actions/actions/name_change/log {old:"$(old_username)",new:"$(new_username)"}

function pandamium:utils/leader_board/update_place/all/self

tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"[Pandamium: Automatically transferred scores and database info/indexes for "},{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/update_entry/*".old_username',bold:true}," to ",{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/update_entry/*".new_username',bold:true},"]"]

# log name change
function pandamium:utils/log {args:{message:['event="changed_username",data={"old_username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/update_entry/*".old_username'},'","new_username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/update_entry/*".new_username'},'"}']}}
