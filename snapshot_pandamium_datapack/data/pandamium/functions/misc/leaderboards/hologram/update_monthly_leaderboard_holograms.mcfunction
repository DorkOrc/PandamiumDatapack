scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 0

scoreboard players set <updated> variable 0
execute as @e[type=text_display,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=hologram.leaderboard.monthly_playtime,limit=1] at @s run function pandamium:misc/leaderboards/hologram/update/monthly_playtime
execute if score <updated> variable matches 0 in overworld positioned -5.863961 93.5 10.399495 facing 0 ~ 0 summon text_display run function pandamium:misc/leaderboards/hologram/update/monthly_playtime

scoreboard players set <updated> variable 0
execute as @e[type=text_display,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=hologram.leaderboard.monthly_votes,limit=1] at @s run function pandamium:misc/leaderboards/hologram/update/monthly_votes
execute if score <updated> variable matches 0 in overworld positioned -9.399495 93.5 6.863961 facing 0 ~ 0 summon text_display run function pandamium:misc/leaderboards/hologram/update/monthly_votes
