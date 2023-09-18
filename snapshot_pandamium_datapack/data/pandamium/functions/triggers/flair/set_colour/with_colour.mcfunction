# arguments: literal

$data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium.db:players","nbt":"selected.entry.data.flair","interpret":true,"color":"$(literal)"}'
data modify storage pandamium.db:players selected.entry.data.flair set from block 3 0 0 front_text.messages[0]

function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Set flair colour to ","color":"green"},{"storage":"pandamium:temp","nbt":"colour.name","interpret":true},"!"]
