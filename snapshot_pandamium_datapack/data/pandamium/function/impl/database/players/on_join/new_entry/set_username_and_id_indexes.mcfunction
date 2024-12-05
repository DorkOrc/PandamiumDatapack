# arguments: username, index, id

# update username and id indexes
$execute store result storage pandamium.db.players:data username_indexes."$(username)" int 1 store result storage pandamium.db.players:data id_indexes."$(id)" int 1 run scoreboard players get @s id

# migrate legacy home scores into database home scores
function pandamium:impl/database/players/on_join/new_entry/copy_homes_to_entry with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"

# add username to username searching map
$function pandamium:impl/usernames_map/add_name/main {name:"$(username)"}

# feedback to admins
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: New [players] entry for ","extra":[{"storage":"pandamium:local","nbt":"functions.\"pandamium:impl/database/players/on_join/*\".username"}," at index ",{"storage":"pandamium:local","nbt":"functions.\"pandamium:impl/database/players/on_join/*\".index"},"]"]}

