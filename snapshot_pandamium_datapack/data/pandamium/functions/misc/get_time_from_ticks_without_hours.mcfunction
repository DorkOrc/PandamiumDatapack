# Input: <ticks> variable

data modify storage pandamium:temp time set value [I;0,0,0]

scoreboard players operation <seconds> variable = <ticks> variable
scoreboard players operation <seconds> variable %= <ticks_per_minute> variable
execute store result storage pandamium:temp time[1] int 1 run scoreboard players operation <seconds> variable /= <ticks_per_second> variable

scoreboard players operation <minutes> variable = <ticks> variable
execute store result storage pandamium:temp time[2] int 1 run scoreboard players operation <minutes> variable /= <ticks_per_minute> variable


execute store result storage pandamium:temp time[0] int 1 run scoreboard players operation <ticks> variable %= <ticks_per_second> variable
