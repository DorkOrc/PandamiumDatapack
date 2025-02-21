# arguments: datetime
# returns: datetime_id
# outputs:
# - score <hour_id> variable
# - score <datetime_id> variable

$data modify storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime set value $(datetime)
execute store success score <datetime.is_list> variable if data storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[0]

execute if score <datetime.is_list> variable matches 1 store result score <datetime.year> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[0]
execute if score <datetime.is_list> variable matches 1 store result score <datetime.month> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[1]
execute if score <datetime.is_list> variable matches 1 store result score <datetime.day> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[2]
execute if score <datetime.is_list> variable matches 1 store result score <datetime.hour> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[3]
execute if score <datetime.is_list> variable matches 1 store result score <datetime.minute> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[4]
execute if score <datetime.is_list> variable matches 1 store result score <datetime.second> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime[5]

execute if score <datetime.is_list> variable matches 0 store result score <datetime.year> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.year
execute if score <datetime.is_list> variable matches 0 store result score <datetime.month> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.month
execute if score <datetime.is_list> variable matches 0 store result score <datetime.day> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.day
execute if score <datetime.is_list> variable matches 0 store result score <datetime.hour> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.hour
execute if score <datetime.is_list> variable matches 0 store result score <datetime.minute> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.minute
execute if score <datetime.is_list> variable matches 0 store result score <datetime.second> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_id_from_datetime".datetime.second

# validate
execute unless score <datetime.year> variable matches 2000..2049 run return fail
execute unless score <datetime.month> variable matches 1..12 run return fail

execute unless score <datetime.day> variable matches 1..31 run return fail
execute unless score <datetime.month> variable matches 1..3 unless score <datetime.month> variable matches 5 unless score <datetime.month> variable matches 7..8 unless score <datetime.month> variable matches 10 unless score <datetime.month> variable matches 12 unless score <datetime.day> variable matches 1..30 run return fail
scoreboard players operation <is_leap_year> variable = <datetime.year> variable
scoreboard players operation <is_leap_year> variable %= #4 constant
execute store success score <is_leap_year> variable if score <is_leap_year> variable matches 0
execute if score <datetime.month> variable matches 2 if score <is_leap_year> variable matches 0 unless score <datetime.day> variable matches 1..28 run return fail
execute if score <datetime.month> variable matches 2 if score <is_leap_year> variable matches 1 unless score <datetime.day> variable matches 1..29 run return fail

execute unless score <datetime.hour> variable matches 0..23 run return fail
execute unless score <datetime.minute> variable matches 0..59 run return fail
execute unless score <datetime.second> variable matches 0..59 run return fail

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
scoreboard players operation <hour_id> variable = <datetime.year> variable
scoreboard players remove <hour_id> variable 2000
scoreboard players operation <hour_id> variable *= #12 constant
scoreboard players operation <hour_id> variable += <datetime.month> variable
scoreboard players remove <hour_id> variable 1
scoreboard players operation <hour_id> variable *= #31 constant
scoreboard players operation <hour_id> variable += <datetime.day> variable
scoreboard players remove <hour_id> variable 1
scoreboard players operation <hour_id> variable *= #24 constant
scoreboard players operation <hour_id> variable += <datetime.hour> variable

# datetime_id = (hour_id*60+minute)*60+second
# datetime_id = (((((year-2000)*12+month-1)*31+day-1)*24+hour)*60+minute)*60+second
scoreboard players operation <datetime_id> variable = <hour_id> variable
scoreboard players operation <datetime_id> variable *= #60 constant
scoreboard players operation <datetime_id> variable += <datetime.minute> variable
scoreboard players operation <datetime_id> variable *= #60 constant
return run scoreboard players operation <datetime_id> variable += <datetime.second> variable
