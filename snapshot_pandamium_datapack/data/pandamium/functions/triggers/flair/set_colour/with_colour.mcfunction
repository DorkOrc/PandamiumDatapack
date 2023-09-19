# arguments: literal

$data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium.db:players","nbt":"selected.entry.data.flair","interpret":true,"color":"$(literal)"}'
data modify storage pandamium.db:players selected.entry.data.flair set from block 3 0 0 front_text.messages[0]
