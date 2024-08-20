# arguments: id

data remove storage pandamium:temp display_name

$execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"selector":"@a[scores={id=$(id)},limit=1]"}]'
$execute if entity @a[scores={id=$(id)},limit=1] in pandamium:staff_world run return run data modify storage pandamium:temp display_name set from block 3 0 0 front_text.messages[0]

$function pandamium:utils/get/username/from_id {id:$(id)}
$execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"storage":"pandamium:temp","nbt":"username","insertion":"$(id)","hoverEvent":{"action":"show_text","contents":{"text":"Shift+Click to insert User ID","color":"gray"}}},{"text":" (Offline)","color":"gray"}]'
execute in pandamium:staff_world if data storage pandamium:temp username run return run data modify storage pandamium:temp display_name set from block 3 0 0 front_text.messages[0]
