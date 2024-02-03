# arguments: uuid0, uuid1, uuid2, uuid3
$execute store result score @s db.players.index store result storage pandamium.db.players:data uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)" int 1 store result storage pandamium:templates macro.username__index__id.index int 1 if data storage pandamium.db.players:data entries[]

$data modify storage pandamium.db.players:data entries append value {data:{},uuid:[I;$(uuid0),$(uuid1),$(uuid2),$(uuid3)]}

# store username into entry
function pandamium:utils/get/username
data modify storage pandamium:templates macro.username__index__id.username set from storage pandamium:temp username
data modify storage pandamium.db.players:data entries[-1].username set from storage pandamium:temp username

# store id into entry
function pandamium:player/id/update
execute store result storage pandamium.db.players:data entries[-1].id int 1 store result storage pandamium:templates macro.username__index__id.id int 1 run scoreboard players get @s id

# set indexes in hash tables
function pandamium:impl/database/players/on_join/new_entry/set_username_and_id_indexes with storage pandamium:templates macro.username__index__id
