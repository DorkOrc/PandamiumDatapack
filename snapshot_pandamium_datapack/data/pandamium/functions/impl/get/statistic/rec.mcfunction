scoreboard players operation <middle> variable = <upper> variable
scoreboard players operation <middle> variable -= <lower> variable
scoreboard players operation <middle> variable /= #2 constant
execute store result storage pandamium:local "utils/get/statistic".middle int 1 run scoreboard players operation <middle> variable += <lower> variable

function pandamium:impl/get/statistic/check_range with storage pandamium:local "utils/get/statistic"

execute unless score <upper> variable = <lower> variable run function pandamium:impl/get/statistic/rec
