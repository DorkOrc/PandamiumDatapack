# arguments: type, stat

$data modify storage pandamium:local "utils/get/statistic" set value {type:"$(type)",stat:"$(stat)"}

execute store result storage pandamium:local "utils/get/statistic".lower int 1 run scoreboard players set <lower> variable -2147483648
scoreboard players set <upper> variable 2147483647

execute store result storage pandamium:local "utils/get/statistic".middle int 1 run scoreboard players set <middle> variable -1
function pandamium:impl/get/statistic/check_range with storage pandamium:local "utils/get/statistic"

function pandamium:impl/get/statistic/rec

return run scoreboard players get <lower> variable
