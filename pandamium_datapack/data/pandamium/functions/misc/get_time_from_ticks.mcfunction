# Input: <ticks>

data modify storage pandamium:temp time set value [I;0,0,0,0,0]

scoreboard players operation <ticks> variable %= <ticks_per_second> variable
execute store result storage pandamium:temp time[0] int 1 run scoreboard players get <ticks> variable

scoreboard players operation <seconds> variable = <ticks> variable
scoreboard players operation <seconds> variable %= <ticks_per_minute> variable
execute store result storage pandamium:temp time[1] int 1 run scoreboard players operation <seconds> variable /= <ticks_per_second> variable

scoreboard players operation <minutes> variable = <ticks> variable
scoreboard players operation <minutes> variable %= <ticks_per_hour> variable
execute store result storage pandamium:temp time[2] int 1 run scoreboard players operation <minutes> variable /= <ticks_per_minute> variable

scoreboard players operation <hours> variable = <ticks> variable
scoreboard players operation <hours> variable %= <ticks_per_day> variable
execute store result storage pandamium:temp time[3] int 1 run scoreboard players operation <hours> variable /= <ticks_per_hour> variable

scoreboard players operation <days> variable = <ticks> variable
execute store result storage pandamium:temp time[4] int 1 run scoreboard players operation <days> variable /= <ticks_per_day> variable
