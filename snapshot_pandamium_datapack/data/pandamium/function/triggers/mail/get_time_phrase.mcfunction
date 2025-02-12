execute store result score <gametime_when_sent> variable run data get storage pandamium.db.mail:io selected.entry.gametime
execute store result score <ticks> variable run time query gametime
scoreboard players operation <ticks> variable -= <gametime_when_sent> variable
function pandamium:utils/get/time_from_ticks_without_days

execute store result score <hours_since_sent> variable run data get storage pandamium:temp time[3]
execute store result score <minutes_since_sent> variable run data get storage pandamium:temp time[2]
execute store result score <seconds_since_sent> variable run data get storage pandamium:temp time[1]

execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 0 if score <seconds_since_sent> variable matches 0..15 run return run data modify storage pandamium:temp time_phrase set value {text:"just now"}
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 0 if score <seconds_since_sent> variable matches 16.. run return run data modify storage pandamium:temp time_phrase set value {storage:"pandamium:temp",nbt:"time[1]",extra:[" seconds ago"]}
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value {text:"1 minute ago"}
execute if score <hours_since_sent> variable matches 0 if score <minutes_since_sent> variable matches 2.. run return run data modify storage pandamium:temp time_phrase set value {storage:"pandamium:temp",nbt:"time[2]",extra:[" minutes ago"]}
execute if score <hours_since_sent> variable matches 1 run return run data modify storage pandamium:temp time_phrase set value {text:"1 hour ago"}
execute if score <hours_since_sent> variable matches 2..23 run return run data modify storage pandamium:temp time_phrase set value {storage:"pandamium:temp",nbt:"time[3]",extra:[" hours ago"]}

# else:
execute store result score <hour_id> variable run data get storage pandamium.db.mail:io selected.entry.hour_id
function pandamium:utils/datetime/get_datetime_id_from_hour_id
function pandamium:utils/datetime/decompose_datetime_id
function pandamium:utils/datetime/get_datetime_text {args:_}
return run data modify storage pandamium:temp time_phrase set value {text:"on ",extra:[{storage:"pandamium:temp",nbt:"datetime_text.date",interpret:true}]}
