# arguments: username

$execute store result score <real_time_in_ticks> variable run scoreboard players get $(username) parkour_3.best_time_real
$execute store result score <legacy_time_in_ticks> variable run scoreboard players get $(username) parkour_3.best_time

execute if score <real_time_in_ticks> variable matches 0 if score <legacy_time_in_ticks> variable matches 0 run return 0

data modify storage pandamium:queue selected.entry.output.nbt append value {}
data modify storage pandamium:queue selected.entry.output.nbt[-1].username set from storage pandamium:templates macro.username.username

execute store success score <confirmed> variable if score <real_time_in_ticks> variable matches 1..
execute if score <confirmed> variable matches 1 store result storage pandamium:queue selected.entry.output.nbt[-1].time_in_seconds float 0.05 run scoreboard players get <real_time_in_ticks> variable
execute if score <confirmed> variable matches 0 store result storage pandamium:queue selected.entry.output.nbt[-1].time_in_seconds float 0.05 run scoreboard players get <legacy_time_in_ticks> variable

execute if score <confirmed> variable matches 0 run data modify storage pandamium:queue selected.entry.output.nbt[-1].lag_correction_type set value 0
execute if score <confirmed> variable matches 1 run data modify storage pandamium:queue selected.entry.output.nbt[-1].lag_correction_type set value 1
