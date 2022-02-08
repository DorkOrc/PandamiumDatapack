scoreboard players operation <parkour_best_hours> variable = @s parkour_1.best_time
scoreboard players operation <parkour_best_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <parkour_best_minutes> variable = @s parkour_1.best_time
scoreboard players operation <parkour_best_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <parkour_best_minutes> variable %= <60> variable

scoreboard players operation <parkour_best_seconds> variable = @s parkour_1.best_time
scoreboard players operation <parkour_best_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <parkour_best_seconds> variable %= <60> variable

execute if score <parkour_best_hours> variable matches 0 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",{"score":{"name":"<parkour_best_minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},"(s) and ",{"score":{"name":"<parkour_best_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},"(s)!"]]
execute if score <parkour_best_hours> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",{"score":{"name":"<parkour_best_hours>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" hour","color":"aqua"},"(s), ",{"score":{"name":"<parkour_best_minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},"(s) and ",{"score":{"name":"<parkour_best_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},"(s)!"]]
