$execute store result score <player_value> variable store result score <ticks> variable run scoreboard players get $(username) playtime_ticks

function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:temp player_entry.time set from storage pandamium:temp time
