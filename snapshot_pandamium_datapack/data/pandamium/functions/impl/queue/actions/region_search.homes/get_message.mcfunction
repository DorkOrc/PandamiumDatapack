# arguments: id

function pandamium:utils/get/display_name/from_id with storage pandamium:queue selected.entry.output[-1].data
$execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[👁]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true},"\'s homes"]},"clickEvent":{"action":"run_command","value":"/trigger homes set $(id)"}}," ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true,"color":"white"},"\'s Home ",{"storage":"pandamium:queue","nbt":"selected.entry.output[-1].data.home","color":"white"}," at ",{"storage":"pandamium:queue","nbt":"selected.entry.output[-1].xyz[]","separator":" ","color":"white"}]'
execute in pandamium:staff_world run data modify storage pandamium:queue selected.entry.output[-1].data.message set from block 3 0 0 front_text.messages[0]

execute store result storage pandamium:queue selected.entry.output[-1].data.sort_position double 0.000004 run scoreboard players get <squared_distance> variable
