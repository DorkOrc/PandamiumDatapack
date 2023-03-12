scoreboard players set <updated> variable 0
execute as @e[type=text_display,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=hologram.leaderboard.parkour_1,limit=1] at @s run function pandamium:misc/leaderboards/hologram/update/parkour_1
execute if score <updated> variable matches 0 in overworld positioned -42.03 143.50 -82.88 rotated -145 0 summon text_display run function pandamium:misc/leaderboards/hologram/update/parkour_1

scoreboard players set <updated> variable 0
execute as @e[type=text_display,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=hologram.leaderboard.parkour_2,limit=1] at @s run function pandamium:misc/leaderboards/hologram/update/parkour_2
execute if score <updated> variable matches 0 in overworld positioned -22.71 -55.51 -104.51 rotated 147 0 summon text_display run function pandamium:misc/leaderboards/hologram/update/parkour_2
