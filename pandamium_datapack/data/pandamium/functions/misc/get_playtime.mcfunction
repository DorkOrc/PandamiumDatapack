scoreboard players operation <playtime_hours> variable = @s playtime_ticks
scoreboard players set <ticks_per_hour> variable 72000
scoreboard players operation <playtime_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <playtime_minutes> variable = @s playtime_ticks
scoreboard players set <ticks_per_minute> variable 1200
scoreboard players operation <playtime_minutes> variable /= <ticks_per_minute> variable
scoreboard players set <minutes_per_hour> variable 60
scoreboard players operation <playtime_minutes> variable %= <minutes_per_hour> variable

tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Playtime]","color":"dark_green"}," ",{"selector":"@s"}," has ",[{"score":{"name":"<playtime_hours>","objective":"variable"},"color":"aqua"}," hour(s)"]," and ",[{"score":{"name":"<playtime_minutes>","objective":"variable"},"color":"aqua"}," minute(s)"],"!"]
