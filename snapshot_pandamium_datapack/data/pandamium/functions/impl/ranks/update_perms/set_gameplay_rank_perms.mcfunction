scoreboard players set @s gameplay_perms 0
execute if entity @s[scores={votes=5..,playtime_ticks=360000..}] run scoreboard players set @s gameplay_perms 1
execute if entity @s[scores={votes=25..,playtime_ticks=1800000..}] run scoreboard players set @s gameplay_perms 2
execute if entity @s[scores={votes=125..,playtime_ticks=9000000..}] run scoreboard players set @s gameplay_perms 3
execute if entity @s[scores={votes=500..,playtime_ticks=36000000..}] run scoreboard players set @s gameplay_perms 4
execute if entity @s[scores={votes=2500..,playtime_ticks=180000000..}] run scoreboard players set @s gameplay_perms 5
