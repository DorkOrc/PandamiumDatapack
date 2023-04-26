# Input: <ticks> variable

data modify storage pandamium:temp time set value [I;0,0,0,0,0]


scoreboard players operation <seconds> variable = <ticks> variable
scoreboard players operation <seconds> variable %= #ticks_per_minute constant
execute store result storage pandamium:temp time[1] int 1 run scoreboard players operation <seconds> variable /= #ticks_per_second constant

scoreboard players operation <minutes> variable = <ticks> variable
scoreboard players operation <minutes> variable %= #ticks_per_hour constant
execute store result storage pandamium:temp time[2] int 1 run scoreboard players operation <minutes> variable /= #ticks_per_minute constant

scoreboard players operation <hours> variable = <ticks> variable
scoreboard players operation <hours> variable %= #ticks_per_day constant
execute store result storage pandamium:temp time[3] int 1 run scoreboard players operation <hours> variable /= #ticks_per_hour constant

scoreboard players operation <days> variable = <ticks> variable
execute store result storage pandamium:temp time[4] int 1 run scoreboard players operation <days> variable /= #ticks_per_day constant


execute store result storage pandamium:temp time[0] int 1 run scoreboard players operation <ticks> variable %= #ticks_per_second constant
