setblock ~ ~ ~ stone_button[facing=east,face=floor,powered=false]

execute as @e[type=area_effect_cloud,distance=..10,tag=hologram.base] run function pandamium:misc/leaderboards/hologram/kill_entity_stack
execute positioned ~ ~ ~ run function pandamium:misc/leaderboards/hologram/summon_monthly_playtime_leaderboard
