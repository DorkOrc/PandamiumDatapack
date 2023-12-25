# arguments: id

function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
$execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[👁]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium.db:players","nbt":"selected.entry.username"},"\'s homes"]},"clickEvent":{"action":"run_command","value":"/trigger homes set $(id)"}}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.username","color":"white"},"\'s Home ",{"storage":"pandamium:queue","nbt":"this.output[-1].data[1]","color":"white"}," at ",{"storage":"pandamium:queue","nbt":"this.output[-1].xyz[]","separator":" ","color":"white"}]'
execute in pandamium:staff_world run data modify storage pandamium:queue this.output[-1].message set from block 3 0 0 front_text.messages[0]
