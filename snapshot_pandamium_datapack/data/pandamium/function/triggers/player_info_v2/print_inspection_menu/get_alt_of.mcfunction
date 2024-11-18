# arguments: id

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry.data.alt_of

$data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"display_name","interpret":true,"extra":[" ",{"text":"[👉]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see player info for\\n","color":"yellow"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true,"color":"yellow","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set $(id)"}}]}'
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".display_alt_of set from block 3 0 0 front_text.messages[0]
