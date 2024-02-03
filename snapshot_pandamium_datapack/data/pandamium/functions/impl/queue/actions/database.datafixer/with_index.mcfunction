# arguments: index

$data modify storage pandamium:temp date set from storage pandamium.db:mail entries[$(index)].date
$execute store result storage pandamium.db:mail entries[$(index)].hour_id int 1 run function pandamium:utils/get/hour_id/from_date_list
$data remove storage pandamium.db:mail entries[$(index)].date
