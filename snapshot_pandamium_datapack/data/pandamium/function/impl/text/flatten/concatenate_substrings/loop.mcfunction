data modify block 3 0 0 front_text.messages set value ['{"storage":"pandamium:text","nbt":"substrings[-1]"}','{"storage":"pandamium:temp","nbt":"arguments.output"}','{"text":""}','{"text":""}']
data modify storage pandamium:temp arguments.substring set string block 3 0 0 front_text.messages[0] 1 -1
data modify storage pandamium:temp arguments.output set string block 3 0 0 front_text.messages[1] 1 -1

function pandamium:impl/text/flatten/concatenate_substrings/concatenate with storage pandamium:temp arguments

data remove storage pandamium:text substrings[-1]
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/flatten/concatenate_substrings/loop
