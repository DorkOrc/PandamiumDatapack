execute store result score <gametime_when_sent> variable run data get storage pandamium.db:mail selected.entry.gametime
execute store result score <ticks> variable run time query gametime
scoreboard players operation <ticks> variable -= <gametime_when_sent> variable
function pandamium:utils/get/time_from_ticks_without_days

execute store result score <hours_since_sent> variable run data get storage pandamium:temp time[3]
execute store result score <minutes_since_sent> variable run data get storage pandamium:temp time[2]

execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 0 run return run data modify storage pandamium:temp time_phrase set value '[{"storage":"pandamium:temp","nbt":"time[1]"}," seconds ago"]'
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value '[{"storage":"pandamium:temp","nbt":"time[2]"}," minute ago"]'
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 2.. run return run data modify storage pandamium:temp time_phrase set value '[{"storage":"pandamium:temp","nbt":"time[2]"}," minutes ago"]'

execute if score <hours_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value '[{"storage":"pandamium:temp","nbt":"time[3]"}," hour ago"]'
execute if score <hours_since_sent> variable matches 2..23 run return run data modify storage pandamium:temp time_phrase set value '[{"storage":"pandamium:temp","nbt":"time[3]"}," hours ago"]'
execute if score <hours_since_sent> variable matches 24.. run return run data modify storage pandamium:temp time_phrase set value '["on ",{"storage":"pandamium.db:mail","nbt":"selected.entry.date[2]"},"/",{"storage":"pandamium.db:mail","nbt":"selected.entry.date[1]"},"/",{"storage":"pandamium.db:mail","nbt":"selected.entry.date[0]"}," at ≈",{"storage":"pandamium.db:mail","nbt":"selected.entry.date[3]"},":00"]'
