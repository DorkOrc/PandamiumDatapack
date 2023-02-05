execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign
data modify storage pandamium:temp hologram.leaderboard set from storage pandamium:leaderboards monthly_playtime

function pandamium:misc/leaderboards/hologram/summon_dummy
execute as @e[type=area_effect_cloud,distance=..0.01,tag=hologram.base] run function pandamium:misc/leaderboards/hologram/summon_monthly_playtime_leaderboard_rec
