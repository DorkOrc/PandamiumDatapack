scoreboard players set <ticks_per_hour> variable 72000
scoreboard players set <ticks_per_minute> variable 1200
scoreboard players set <ticks_per_second> variable 20
scoreboard players set <60> variable 60

scoreboard players operation <playtime_hours> variable = @s playtime_ticks
scoreboard players operation <playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <playtime_minutes> variable = @s playtime_ticks
scoreboard players operation <playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <playtime_minutes> variable %= <60> variable

scoreboard players operation <playtime_seconds> variable = @s playtime_ticks
scoreboard players operation <playtime_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <playtime_seconds> variable %= <60> variable

scoreboard players operation <monthly_playtime_hours> variable = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <monthly_playtime_minutes> variable = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <monthly_playtime_minutes> variable %= <60> variable

scoreboard players operation <monthly_playtime_seconds> variable = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <monthly_playtime_seconds> variable %= <60> variable

tellraw @p[tag=running_trigger] [{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========"]
execute as @p[tag=running_trigger,scores={staff_perms=1..}] run tellraw @s [{"text":"","color":"aqua"},{"text":"Player: ","bold":true},{"selector":"@s"}]
tellraw @p[tag=running_trigger] [{"text":"Total Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"]
tellraw @p[tag=running_trigger] [{"text":"Monthly Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"]
tellraw @p[tag=running_trigger] [{"text":"=========================","color":"aqua"}]

scoreboard players set <player_exists> variable 1
