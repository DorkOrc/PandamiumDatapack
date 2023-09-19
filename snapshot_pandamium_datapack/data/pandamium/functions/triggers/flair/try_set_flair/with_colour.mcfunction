# arguments: color

$data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"flair","interpret":true,"color":"$(color)"}'
data modify storage pandamium:temp flair set from block 3 0 0 front_text.messages[0]
