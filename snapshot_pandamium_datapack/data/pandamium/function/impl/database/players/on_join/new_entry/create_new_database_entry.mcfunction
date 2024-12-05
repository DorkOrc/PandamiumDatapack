# arguments: uuid_0, uuid_1, uuid_2, uuid_3

# get new entry index and update uuid indexes
$execute store result score @s db.players.index store result storage pandamium.db.players:data uuid_indexes."$(uuid_0)_$(uuid_1)_$(uuid_2)_$(uuid_3)" int 1 storage pandamium:local functions."pandamium:impl/database/players/on_join/*".index int 1 if data storage pandamium.db.players:data entries[]

# create new entry
data modify storage pandamium.db.players:data entries append value {data:{}}
data modify storage pandamium.db.players:data entries[-1].uuid set from storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid

# store username into entry
function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".username set from storage pandamium:temp username
data modify storage pandamium.db.players:data entries[-1].username set from storage pandamium:local functions."pandamium:impl/database/players/on_join/*".username

# store id into entry
function pandamium:player/id/update
execute store result storage pandamium.db.players:data entries[-1].id int 1 run scoreboard players get @s id

# set indexes in hash tables
function pandamium:impl/database/players/on_join/new_entry/set_username_and_id_indexes with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"
