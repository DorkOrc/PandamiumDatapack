# arguments: index

$execute if data storage pandamium.db:players entries[$(index)].data.custom_suffix run tellraw @a[scores={send_extra_debug_info=1}] {"text":"[dataFixer: Upgraded flair data for index $(index)]","color":"gray","italic":true}

$execute if data storage pandamium.db:players entries[$(index)].data.custom_suffix run data modify storage pandamium.db:players entries[$(index)].data.flair set from storage pandamium.db:players entries[$(index)].data.custom_suffix
$data remove storage pandamium.db:players entries[$(index)].data.custom_suffix
