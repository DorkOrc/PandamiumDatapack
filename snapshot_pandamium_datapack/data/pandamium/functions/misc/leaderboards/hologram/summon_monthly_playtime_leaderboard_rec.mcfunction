execute in pandamium:staff_world run data modify block 0 0 0 Text1 set value '["",{"nbt":"hologram.leaderboard[-1].display_name","storage":"pandamium:temp","interpret":true}," --- ",{"nbt":"hologram.leaderboard[-1].time[3]","storage":"pandamium:temp","interpret":true}," hours"]'
execute in pandamium:staff_world run data modify entity @s CustomName set from block 0 0 0 Text1

data remove storage pandamium:temp hologram.leaderboard[-1]
execute unless data storage pandamium:temp hologram.leaderboard[0] on passengers run function pandamium:misc/leaderboards/hologram/summon_monthly_playtime_leaderboard_header
execute if data storage pandamium:temp hologram.leaderboard[0] on passengers run function pandamium:misc/leaderboards/hologram/summon_monthly_playtime_leaderboard_rec
