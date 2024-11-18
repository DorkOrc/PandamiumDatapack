# arguments: id

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]

$data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"display_name","interpret":true,"extra":[" ",{"text":"[👉]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see player info for\\n","color":"yellow"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true,"color":"yellow","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set $(id)"}}]}'
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_names append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]
execute if data storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0] run function pandamium:triggers/player_info_v2/print_inspection_menu/alts_loop with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]
