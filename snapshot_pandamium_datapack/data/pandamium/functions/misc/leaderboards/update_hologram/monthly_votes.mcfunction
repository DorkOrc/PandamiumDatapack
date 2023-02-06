scoreboard players set <updated_old_one> variable 0
execute in overworld positioned -7.631728 91.0 8.631728 as @e[type=area_effect_cloud,distance=..10,tag=hologram.leaderboard.monthly_votes] store success score <updated_old_one> variable run function pandamium:misc/leaderboards/hologram/monthly_votes/update
execute if score <updated_old_one> variable matches 0 in overworld positioned -9.399495 91.0 6.863961 run function pandamium:misc/leaderboards/hologram/monthly_votes/summon
