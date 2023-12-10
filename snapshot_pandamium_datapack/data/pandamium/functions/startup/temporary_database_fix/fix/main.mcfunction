# arguments: index

$bossbar set pandamium:data_fixer_progress value $(index)
bossbar set pandamium:data_fixer_progress players @a[scores={send_extra_debug_info=1..}]
$bossbar set pandamium:data_fixer_progress name {"text":"[dataFixer] fixing index $(index)"}

$execute if data storage pandamium.db:mail entries[$(index)].data run return 0

# move non-meta data to `data` field
$data modify storage pandamium.db:mail entries[$(index)].data.message set from storage pandamium.db:mail entries[$(index)].message
$data modify storage pandamium.db:mail entries[$(index)].data.preview set from storage pandamium.db:mail entries[$(index)].preview
$data modify storage pandamium.db:mail entries[$(index)].data.title set from storage pandamium.db:mail entries[$(index)].title
$data modify storage pandamium.db:mail entries[$(index)].data.items set from storage pandamium.db:mail entries[$(index)].items

$data remove storage pandamium.db:mail entries[$(index)].message
$data remove storage pandamium.db:mail entries[$(index)].preview
$data remove storage pandamium.db:mail entries[$(index)].title
$data remove storage pandamium.db:mail entries[$(index)].items

# remove unnecessary "player" type in sender metadata
$data remove storage pandamium.db:mail entries[$(index)].sender{type:"player"}.type

# convert date to hour_id
$data modify storage pandamium:temp date set from storage pandamium.db:mail entries[$(index)].date
$data remove storage pandamium.db:mail entries[$(index)].date
$execute store result storage pandamium.db:mail entries[$(index)].hour_id int 1 run function pandamium:utils/get/hour_id/from_date_list
