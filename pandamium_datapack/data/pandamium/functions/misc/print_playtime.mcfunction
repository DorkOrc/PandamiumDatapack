scoreboard players operation <playtime_hours> variable = @s playtime_ticks
scoreboard players operation <playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <playtime_minutes> variable = @s playtime_ticks
scoreboard players operation <playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <playtime_minutes> variable %= <60> variable

scoreboard players operation <playtime_seconds> variable = @s playtime_ticks
scoreboard players operation <playtime_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <playtime_seconds> variable %= <60> variable


scoreboard players operation <monthly_playtime_hours> variable = @s monthly_playtime_ticks
scoreboard players operation <monthly_playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <monthly_playtime_minutes> variable = @s monthly_playtime_ticks
scoreboard players operation <monthly_playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <monthly_playtime_minutes> variable %= <60> variable

scoreboard players operation <monthly_playtime_seconds> variable = @s monthly_playtime_ticks
scoreboard players operation <monthly_playtime_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <monthly_playtime_seconds> variable %= <60> variable


scoreboard players operation <online_playtime_hours> variable = @s online_ticks
scoreboard players operation <online_playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <online_playtime_minutes> variable = @s online_ticks
scoreboard players operation <online_playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <online_playtime_minutes> variable %= <60> variable

scoreboard players operation <online_playtime_seconds> variable = @s online_ticks
scoreboard players operation <online_playtime_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <online_playtime_seconds> variable %= <60> variable


execute if score @p[tag=running_trigger] playtime matches 1 run tellraw @p[tag=running_trigger] [{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========",[{"text":"\nTotal Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nMonthly Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nOnline For: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<online_playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<online_playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<online_playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n========================="]
execute if score @p[tag=running_trigger] playtime matches 2.. run tellraw @p[tag=running_trigger] [{"text":"======== ","color":"yellow"},{"text":"Playtime","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},[{"text":"\nTotal Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_seconds>","objective":"variable"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nMonthly Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_hours>","objective":"variable"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_minutes>","objective":"variable"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_seconds>","objective":"variable"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nOnline For: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<online_playtime_hours>","objective":"variable"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<online_playtime_minutes>","objective":"variable"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<online_playtime_seconds>","objective":"variable"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n========================="]
