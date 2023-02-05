execute as @a run function #pandamium:leaderboards/update/playtime

scoreboard players set <updated_old_one> variable 0
execute in pandamium:staff_world positioned 0 64 0 as @e[type=area_effect_cloud,distance=..50,tag=hologram.leaderboard.monthly_playtime] store success score <updated_old_one> variable run function pandamium:misc/leaderboards/hologram/monthly_playtime/update
execute if score <updated_old_one> variable matches 0 in pandamium:staff_world positioned 13 64 -5 run function pandamium:misc/leaderboards/hologram/monthly_playtime/summon

scoreboard players set <updated_old_one> variable 0
execute in pandamium:staff_world positioned 0 64 0 as @e[type=area_effect_cloud,distance=..50,tag=hologram.leaderboard.monthly_votes] store success score <updated_old_one> variable run function pandamium:misc/leaderboards/hologram/monthly_votes/update
execute if score <updated_old_one> variable matches 0 in pandamium:staff_world positioned 13 64 0 run function pandamium:misc/leaderboards/hologram/monthly_votes/summon

schedule function pandamium:misc/leaderboards/update_loop 60s
