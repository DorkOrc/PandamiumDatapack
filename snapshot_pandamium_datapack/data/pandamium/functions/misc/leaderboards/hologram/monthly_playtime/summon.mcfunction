function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/setup
function pandamium:misc/leaderboards/hologram/summon_dummy
tag @e[type=area_effect_cloud,distance=..0.01,tag=hologram.base,limit=1] add hologram.leaderboard.monthly_playtime
execute as @e[type=area_effect_cloud,distance=..0.01,tag=hologram.leaderboard.monthly_playtime,limit=1] run function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/rec
