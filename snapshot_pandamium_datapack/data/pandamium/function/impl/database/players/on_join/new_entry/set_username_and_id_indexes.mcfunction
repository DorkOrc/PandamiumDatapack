# arguments: username, index, id, lowercase_username

$data modify storage pandamium.db.players:data username_indexes."$(username)" set value $(index)
$data modify storage pandamium.db.players:data id_indexes."$(id)" set value $(index)
$data modify storage pandamium.db.players:data lowercase_username_indexes."$(lowercase_username)" set value $(index)

$function pandamium:impl/database/players/on_join/new_entry/copy_homes_to_entry {index:"$(index)",username:"$(username)"}

$function pandamium:impl/usernames_map/add_name/main {name:"$(username)"}

tellraw @a[scores={send_extra_debug_info=2..}] [{color:"gray",italic:true,text:"[Pandamium: New [players] entry for "},{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/new_entry/*".username'}," at index ",{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/on_join/new_entry/*".index'},"]"]
