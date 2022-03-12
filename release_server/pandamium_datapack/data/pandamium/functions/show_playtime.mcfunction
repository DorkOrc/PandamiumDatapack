scoreboard players operation @s playtimeMins = @s playtime
scoreboard players operation @s playtimeMins /= <ticksPerMinute> variable
scoreboard players operation @s playtimeMins %= <minutesPerHour> variable
scoreboard players operation @s playtimeHours = @s playtime
scoreboard players operation @s playtimeHours /= <ticksPerHour> variable
tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You have played for ","color":"green"},{"score":{"name":"@s","objective":"playtimeHours"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"playtimeMins"},"color":"aqua"},{"text":" minutes!","color":"green"}]