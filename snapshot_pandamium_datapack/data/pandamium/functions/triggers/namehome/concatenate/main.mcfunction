$data modify storage pandamium:temp json set value $(json)

data modify storage pandamium:temp components set value []
data modify storage pandamium:temp components append from storage pandamium:temp json.text
data modify storage pandamium:temp components append from storage pandamium:temp json.extra[].text

data modify storage pandamium:temp chars set value []

execute if data storage pandamium:temp components[0] run data modify storage pandamium:temp this_component set from storage pandamium:temp components[0]
execute if data storage pandamium:temp components[0] run function pandamium:triggers/namehome/concatenate/loop_get_chars

data modify storage pandamium:temp arguments set value {plain:"",char:""}
execute if data storage pandamium:temp chars[0] run data modify storage pandamium:temp arguments.char set from storage pandamium:temp chars[0]
execute if data storage pandamium:temp chars[0] run function pandamium:triggers/namehome/concatenate/loop_join_chars with storage pandamium:temp arguments

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"arguments.plain"}'
execute in pandamium:staff_world run data modify storage pandamium:temp text set from block 3 0 0 front_text.messages[0]
