# arguments: uuid0, uuid1, uuid2, uuid3
$execute store result score @s db.players.index store result storage pandamium.db:players uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)" int 1 store result storage pandamium:templates macro.username__index__id__json.index int 1 store result storage pandamium:templates macro.string_uuid__index.index int 1 if data storage pandamium.db:players entries[]

$data modify storage pandamium.db:players entries append value {data:{},uuid:[I;$(uuid0),$(uuid1),$(uuid2),$(uuid3)]}

# store username into entry
function pandamium:utils/get/username
data modify storage pandamium:templates macro.username__index__id__json.username set from storage pandamium:temp username
data modify storage pandamium.db:players entries[-1].username set from storage pandamium:temp username

# store id into entry
function pandamium:player/id/update
execute store result storage pandamium.db:players entries[-1].id int 1 store result storage pandamium:templates macro.username__index__id__json.id int 1 run scoreboard players get @s id

# get string_uuid
# there should be a sign at 3 0 0 anyway, but this is important enough to require a setblock to ensure it is there.
tag @s add source
execute in pandamium:staff_world run setblock 3 0 0 oak_sign
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"selector":"@a[tag=source,limit=1]"}'
tag @s remove source
execute in pandamium:staff_world run data modify storage pandamium:templates macro.username__index__id__json.json set from block 3 0 0 front_text.messages[0]

# set indexes in hash tables
function pandamium:impl/database/players/on_join/set_username_and_id_indexes with storage pandamium:templates macro.username__index__id__json
