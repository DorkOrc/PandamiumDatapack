# arguments: username, index, id

$data modify storage pandamium.db.players:data username_indexes."$(username)" set value $(index)
$data modify storage pandamium.db.players:data id_indexes."$(id)" set value $(index)

$function pandamium:impl/database/players/on_join/new_entry/copy_homes_to_entry {index:"$(index)",username:"$(username)"}

$function pandamium:impl/usernames_map/add_name/main {name:"$(username)"}

$tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[PandaDB: New [players] entry for $(username) at index $(index)]","color":"gray","italic":true}
