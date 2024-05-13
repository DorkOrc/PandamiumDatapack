# arguments: id
# context: in pandamium:staff_world

data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"display_name","interpret":true}'

execute if data storage pandamium:temp {origin_trigger:"mail"} run function pandamium:triggers/search_players/click_events/search_names/set_origin_trigger_format/mail with storage pandamium.db.players:io selected.entry
$execute if data storage pandamium:temp {origin_trigger:"jail"} run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[J]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to jail ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger jail set $(id)"}}," ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]'
$execute if data storage pandamium:temp {origin_trigger:"unjail"} run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[U]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to unjail ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger unjail set $(id)"}}," ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]'
$execute if data storage pandamium:temp {origin_trigger:"player_info"} run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[👉]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see player info for\\n","color":"yellow"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set $(id)"}}," ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]'

data modify storage pandamium:temp display_name set from block 3 0 0 front_text.messages[0]
