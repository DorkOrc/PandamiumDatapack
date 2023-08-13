$data modify storage pandamium:temp json set value $(json)
data modify storage pandamium:templates macro.string_uuid__index.string_uuid set from storage pandamium:temp json.hoverEvent.contents.id
function pandamium:impl/database/players/on_join/set_string_uuid_indexes with storage pandamium:templates macro.string_uuid__index

$data modify storage pandamium.db:players username_indexes."$(username)" set value $(index)
$data modify storage pandamium.db:players id_indexes."$(id)" set value $(index)

$tellraw @a[scores={send_extra_debug_info=1}] [{"text":"[Database: New ","color":"gray","italic":true},{"text":"players","bold":true}," entry (index=$(index),username=$(username))]"]
