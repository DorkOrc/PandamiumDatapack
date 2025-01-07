# arguments: old, new

$scoreboard players operation <datetime_id> variable = $(old) last_joined.year
scoreboard players remove <datetime_id> variable 2000
scoreboard players operation <datetime_id> variable *= #12 constant
$scoreboard players operation <datetime_id> variable += $(old) last_joined.month
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #31 constant
$scoreboard players operation <datetime_id> variable += $(old) last_joined.day
scoreboard players remove <datetime_id> variable 1
scoreboard players operation <datetime_id> variable *= #24 constant
$scoreboard players operation <datetime_id> variable += $(old) last_joined.hour
scoreboard players operation <datetime_id> variable *= #3600 constant

$scoreboard players operation $(new) last_joined.datetime = <datetime_id> variable
