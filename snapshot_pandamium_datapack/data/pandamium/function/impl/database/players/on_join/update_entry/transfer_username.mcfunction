# arguments: old_username, new_username

$data remove storage pandamium.db.players:data username_indexes.$(old_username)
$data modify storage pandamium.db.players:data username_indexes.$(new_username) set value $(index)

$function pandamium:impl/usernames_map/remove_name/main {username:"$(old_username)"}
$function pandamium:impl/usernames_map/add_name/main {name:"$(new_username)"}

$function pandamium:impl/transfer_player_data/main {old:"$(old_username)",new:"$(new_username)"}
$function pandamium:impl/auto_actions/actions/name_change/log {old:"$(old_username)",new:"$(new_username)"}

function pandamium:utils/leader_board/update_place/all/self

$tellraw @a[scores={send_extra_debug_info=1..}] [{text:"[Pandamium: Automatically transferred scores and database info/indexes for ",color:"gray",italic:true},{text:"$(old_username)",bold:true},{text:" to "},{text:"$(new_username)",bold:true},{text:"]"}]

# log name change
$function pandamium:utils/log {args:{message:'event="changed_username",data={"old_username":"$(old_username)","new_username":"$(new_username)"}'}}
