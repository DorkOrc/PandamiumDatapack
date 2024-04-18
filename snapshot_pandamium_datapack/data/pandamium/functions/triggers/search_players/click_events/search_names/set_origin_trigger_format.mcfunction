# arguments: id
# context: in pandamium:staff_world

data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"display_name","interpret":true}'
$execute if data storage pandamium:temp {origin_trigger:"mail"} run data modify block 3 0 0 front_text.messages[0] set value '["",{"text":"[✉+]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to send ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," mail"]},"clickEvent":{"action":"run_command","value":"/trigger mail set $(id)"}}," ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]'
data modify storage pandamium:temp display_name set from block 3 0 0 front_text.messages[0]
