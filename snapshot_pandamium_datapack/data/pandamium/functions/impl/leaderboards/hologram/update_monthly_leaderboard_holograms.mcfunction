scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 0

# stop if area is not loaded.
execute unless loaded -273 142 120 run return 0

scoreboard players set <updated> variable 0
execute in overworld as @e[type=text_display,x=0,predicate=pandamium:in_spawn,tag=hologram.leaderboard.monthly_playtime,limit=1] at @s run function pandamium:impl/leaderboards/hologram/update/monthly_playtime
execute if score <updated> variable matches 0 in overworld positioned -272.75 142.0 123.25 rotated -90 0 summon text_display run function pandamium:impl/leaderboards/hologram/update/monthly_playtime

scoreboard players set <updated> variable 0
execute in overworld as @e[type=text_display,x=0,predicate=pandamium:in_spawn,tag=hologram.leaderboard.monthly_votes,limit=1] at @s run function pandamium:impl/leaderboards/hologram/update/monthly_votes
execute if score <updated> variable matches 0 in overworld positioned -272.75 142.0 117.75 rotated -90 0 summon text_display run function pandamium:impl/leaderboards/hologram/update/monthly_votes

scoreboard players set <updated> variable 0
execute in overworld as @e[type=text_display,x=0,predicate=pandamium:in_spawn,tag=hologram.leaderboard.yearly_playtime,limit=1] at @s run function pandamium:impl/leaderboards/hologram/update/yearly_playtime
execute if score <updated> variable matches 0 in overworld positioned -272.25 146.5 123.25 rotated -90 10 summon text_display run function pandamium:impl/leaderboards/hologram/update/yearly_playtime

scoreboard players set <updated> variable 0
execute in overworld as @e[type=text_display,x=0,predicate=pandamium:in_spawn,tag=hologram.leaderboard.parkour_3,limit=1] at @s run function pandamium:impl/leaderboards/hologram/update/parkour_3
execute if score <updated> variable matches 0 in overworld positioned -296.86 131.28 157.32 rotated -50 5 summon text_display run function pandamium:impl/leaderboards/hologram/update/parkour_3
