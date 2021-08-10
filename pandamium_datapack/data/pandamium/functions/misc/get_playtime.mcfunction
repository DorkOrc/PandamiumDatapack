scoreboard players operation <playtime_hours> temp = @s playtime_ticks
scoreboard players operation <playtime_hours> temp /= <ticks_per_hour> temp

scoreboard players operation <playtime_minutes> temp = @s playtime_ticks
scoreboard players operation <playtime_minutes> temp /= <ticks_per_minute> temp
scoreboard players operation <playtime_minutes> temp %= <60> temp

scoreboard players operation <playtime_seconds> temp = @s playtime_ticks
scoreboard players operation <playtime_seconds> temp /= <ticks_per_second> temp
scoreboard players operation <playtime_seconds> temp %= <60> temp

scoreboard players operation <monthly_playtime_hours> temp = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_hours> temp /= <ticks_per_hour> temp

scoreboard players operation <monthly_playtime_minutes> temp = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_minutes> temp /= <ticks_per_minute> temp
scoreboard players operation <monthly_playtime_minutes> temp %= <60> temp

scoreboard players operation <monthly_playtime_seconds> temp = @s monthly_pt_ticks
scoreboard players operation <monthly_playtime_seconds> temp /= <ticks_per_second> temp
scoreboard players operation <monthly_playtime_seconds> temp %= <60> temp

execute if score @p[tag=running_trigger] playtime matches 1 run tellraw @p[tag=running_trigger] [{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========",[{"text":"\nTotal Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<playtime_hours>","objective":"temp"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_minutes>","objective":"temp"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<playtime_seconds>","objective":"temp"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nMonthly Playtime: ","color":"green"},[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_hours>","objective":"temp"},"color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_minutes>","objective":"temp"},"color":"aqua","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"aqua"},{"score":{"name":"<monthly_playtime_seconds>","objective":"temp"},"color":"aqua","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n========================="]
execute if score @p[tag=running_trigger] playtime matches 2.. run tellraw @p[tag=running_trigger] [{"text":"======== ","color":"yellow"},{"text":"Playtime","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},[{"text":"\nTotal Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<playtime_hours>","objective":"temp"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_minutes>","objective":"temp"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<playtime_seconds>","objective":"temp"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],[{"text":"\nMonthly Playtime: ","color":"gold"},[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_hours>","objective":"temp"},"color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray","italic":true}],", ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_minutes>","objective":"temp"},"color":"yellow","bold":true}," minute",{"text":"(s)","color":"gray","italic":true}]," and ",[{"text":"","color":"yellow"},{"score":{"name":"<monthly_playtime_seconds>","objective":"temp"},"color":"yellow","bold":true}," second",{"text":"(s)","color":"gray","italic":true}],"!"],"\n========================="]

scoreboard players set <player_exists> temp 1

