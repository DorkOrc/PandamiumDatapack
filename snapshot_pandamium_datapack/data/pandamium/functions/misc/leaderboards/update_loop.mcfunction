execute as @a run function #pandamium:leaderboards/update/playtime

scoreboard players set <updated_old_one> variable 0
execute in overworld positioned -9.399495 90.5 10.399495 as @e[type=area_effect_cloud,distance=..10,tag=hologram.leaderboard.monthly_playtime] store success score <updated_old_one> variable run function pandamium:misc/leaderboards/hologram/monthly_playtime/update
execute if score <updated_old_one> variable matches 0 in overworld positioned -7.631728 90.5 12.167262 run function pandamium:misc/leaderboards/hologram/monthly_playtime/summon

scoreboard players set <updated_old_one> variable 0
execute in overworld positioned -9.399495 90.5 10.399495 as @e[type=area_effect_cloud,distance=..10,tag=hologram.leaderboard.monthly_votes] store success score <updated_old_one> variable run function pandamium:misc/leaderboards/hologram/monthly_votes/update
execute if score <updated_old_one> variable matches 0 in overworld positioned -11.167262 90.5 8.631728 run function pandamium:misc/leaderboards/hologram/monthly_votes/summon

schedule function pandamium:misc/leaderboards/update_loop 60s
