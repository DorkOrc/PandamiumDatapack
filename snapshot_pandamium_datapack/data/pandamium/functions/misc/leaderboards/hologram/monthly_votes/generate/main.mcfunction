data modify storage pandamium:temp hologram.leaderboard set from storage pandamium:leaderboards monthly_votes
data modify storage pandamium:temp hologram.lines set value ['["",{"text":"=== Monthly Votes ===","color":"aqua","bold":true}]']
scoreboard players set <max> variable 15

execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign
scoreboard players set <n> variable 0
execute in pandamium:staff_world run function pandamium:misc/leaderboards/hologram/monthly_votes/generate/iter
