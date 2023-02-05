function pandamium:misc/leaderboards/hologram/monthly_votes/generate/setup
function pandamium:misc/leaderboards/hologram/summon_hologram_stack
tag @e[type=area_effect_cloud,distance=..0.01,tag=hologram.base,limit=1] add hologram.leaderboard.monthly_votes
execute as @e[type=area_effect_cloud,distance=..0.01,tag=hologram.leaderboard.monthly_votes,limit=1] run function pandamium:misc/leaderboards/hologram/monthly_votes/generate/rec
