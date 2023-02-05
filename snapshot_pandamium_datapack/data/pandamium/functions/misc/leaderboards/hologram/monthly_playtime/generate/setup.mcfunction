execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign
data modify storage pandamium:temp hologram.leaderboard set from storage pandamium:leaderboards monthly_playtime
function pandamium:misc/leaderboards/hologram/trim_to_top_ten

execute store result score <num> variable run data get storage pandamium:temp hologram.leaderboard
scoreboard players add <num> variable 1
