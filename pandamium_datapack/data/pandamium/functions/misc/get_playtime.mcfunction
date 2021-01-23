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

execute if score @p[tag=running_trigger] playtime matches 1 run tellraw @p[tag=running_trigger] [[{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========"],"\n",[{"text":"Total Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n",[{"text":"Monthly Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_hours>","objective":"variable"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_minutes>","objective":"variable"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_seconds>","objective":"variable"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n",[{"text":"=========================","color":"aqua"}]]
execute if score @p[tag=running_trigger,scores={staff_perms=1..}] playtime matches 2.. run tellraw @p[tag=running_trigger] [[{"text":"======== ","color":"yellow"},{"text":"Playtime","bold":true}," ========"],"\n",[{"text":"","color":"yellow"},{"text":"Player: ","bold":true},{"selector":"@s"}],"\n",[{"text":"Total Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_seconds>","objective":"variable"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n",[{"text":"Monthly Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_hours>","objective":"variable"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_minutes>","objective":"variable"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_seconds>","objective":"variable"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n",[{"text":"=========================","color":"yellow"}]]

scoreboard players set <player_exists> variable 1
