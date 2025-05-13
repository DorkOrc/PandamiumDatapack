execute store result score <datetime_sent> variable run data get storage pandamium.db.mail:io selected.entry.datetime_sent
execute if score <datetime_sent> variable matches 0 store result score <datetime_sent> variable run data get storage pandamium.db.mail:io selected.entry.datetime_created

execute store result score <seconds_since_sent> variable run function pandamium:utils/datetime/get_current_datetime_id
execute store result score <hours_since_sent> variable store result score <minutes_since_sent> variable run scoreboard players operation <seconds_since_sent> variable -= <datetime_sent> variable
scoreboard players operation <minutes_since_sent> variable /= #seconds_per_minute constant
scoreboard players operation <minutes_since_sent> variable %= #minutes_per_hour constant
scoreboard players operation <hours_since_sent> variable /= #seconds_per_hour constant

execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 0 if score <seconds_since_sent> variable matches 0..15 run return run data modify storage pandamium:temp time_phrase set value "just now"
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 0 if score <seconds_since_sent> variable matches 16.. run return run data modify storage pandamium:temp time_phrase set value [{score:{name:"<seconds_since_sent>",objective:"variable"}}," seconds ago"]
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value "1 minute ago"
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 2.. run return run data modify storage pandamium:temp time_phrase set value [{score:{name:"<minutes_since_sent>",objective:"variable"}}," minutes ago"]
execute if score <hours_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value "1 hour ago"
execute if score <hours_since_sent> variable matches 2..23 run return run data modify storage pandamium:temp time_phrase set value [{score:{name:"<hours_since_sent>",objective:"variable"}}," hours ago"]

# else:
execute store result score <datetime_id> variable run data get storage pandamium.db.mail:io selected.entry.datetime_sent
function pandamium:utils/datetime/decompose_datetime_id
function pandamium:utils/datetime/get_datetime_text {args:_}
return run data modify storage pandamium:temp time_phrase set value {text:"on ",extra:[{storage:"pandamium:temp",nbt:"datetime_text.date",interpret:true}]}
