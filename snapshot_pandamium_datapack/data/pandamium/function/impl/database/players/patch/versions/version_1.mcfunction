# arguments: username, (...)

# last_joined
$execute if score $(username) last_joined.year matches 0 run scoreboard players reset $(username) last_joined.year
$execute store result score <datetime_id> variable run scoreboard players get $(username) last_joined.year
scoreboard players remove <datetime_id> variable 2000
scoreboard players operation <datetime_id> variable *= #12 constant
$scoreboard players operation <datetime_id> variable += $(username) last_joined.month
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #31 constant
$scoreboard players operation <datetime_id> variable += $(username) last_joined.day
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #24 constant
$scoreboard players operation <datetime_id> variable += $(username) last_joined.hour
scoreboard players operation <datetime_id> variable *= #3600 constant

$execute if score $(username) last_joined.year = $(username) last_joined.year run scoreboard players operation $(username) last_joined.datetime = <datetime_id> variable
$scoreboard players reset $(username) last_joined.year
$scoreboard players reset $(username) last_joined.month
$scoreboard players reset $(username) last_joined.day
$scoreboard players reset $(username) last_joined.hour

# first_joined
$execute if score $(username) first_joined.year matches 0 run scoreboard players reset $(username) first_joined.year
$execute store result score <datetime_id> variable run scoreboard players get $(username) first_joined.year
scoreboard players remove <datetime_id> variable 2000
scoreboard players operation <datetime_id> variable *= #12 constant
$scoreboard players operation <datetime_id> variable += $(username) first_joined.month
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #31 constant
$scoreboard players operation <datetime_id> variable += $(username) first_joined.day
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #24 constant
$scoreboard players operation <datetime_id> variable += $(username) first_joined.hour
scoreboard players operation <datetime_id> variable *= #3600 constant

$execute if score $(username) first_joined.year = $(username) first_joined.year run scoreboard players operation $(username) first_joined.datetime = <datetime_id> variable
$scoreboard players reset $(username) first_joined.year
$scoreboard players reset $(username) first_joined.month
$scoreboard players reset $(username) first_joined.day
$scoreboard players reset $(username) first_joined.hour
