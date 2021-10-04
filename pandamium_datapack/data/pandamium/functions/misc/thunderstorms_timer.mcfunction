scoreboard players remove <thunderstorms_timer> global 5

# 432000 = 6 hours
execute if score <thunderstorms_timer> global matches ..0 unless score <disable_thunder_storm_timer> global matches 1 run weather thunder
execute if score <thunderstorms_timer> global matches ..0 run scoreboard players set <thunderstorms_timer> global 432000
