# arguments: index

$execute unless data storage pandamium.db:players entries[$(index)].data.alts[].priority run return 0

$tellraw @a[scores={send_extra_debug_info=1}] [{"text":"[dataFixer: Upgraded data for ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":{"storage":"pandamium.db:players","nbt":"entries[$(index)].data.alts"}}},{"storage":"pandamium.db:players","nbt":"entries[$(index)].username"},"]"]

$data modify storage pandamium.db:players entries[$(index)].data.alts[0].flags set from storage pandamium.db:players entries[$(index)].data.alts[0].priority
$data modify storage pandamium.db:players entries[$(index)].data.alts[1].flags set from storage pandamium.db:players entries[$(index)].data.alts[1].priority
$data modify storage pandamium.db:players entries[$(index)].data.alts[2].flags set from storage pandamium.db:players entries[$(index)].data.alts[2].priority
$data modify storage pandamium.db:players entries[$(index)].data.alts[3].flags set from storage pandamium.db:players entries[$(index)].data.alts[3].priority
$data modify storage pandamium.db:players entries[$(index)].data.alts[4].flags set from storage pandamium.db:players entries[$(index)].data.alts[4].priority
$data remove storage pandamium.db:players entries[$(index)].data.alts[].priority
