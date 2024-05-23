# inputs: 
# - score <hour_id> variable
# outputs:
# - storage pandamium:temp date
# - score <year> variable
# - score <month> variable
# - score <day> variable
# - score <hour> variable

data modify storage pandamium:temp date set value [I;0,0,0,0]

execute store result score <day> variable run scoreboard players operation <hour> variable = <hour_id> variable
execute store result storage pandamium:temp date[3] int 1 run scoreboard players operation <hour> variable %= #24 constant
# hour  = hour_id % 24

execute store result score <month> variable run scoreboard players operation <day> variable /= #24 constant
scoreboard players operation <day> variable %= #31 constant
execute store result storage pandamium:temp date[2] int 1 run scoreboard players add <day> variable 1
# day   = (hour_id / 24) % 31 + 1

execute store result score <year> variable run scoreboard players operation <month> variable /= #31 constant
scoreboard players operation <month> variable %= #12 constant
execute store result storage pandamium:temp date[1] int 1 run scoreboard players add <month> variable 1
# month = (hour_id / 24) / 31 % 12 + 1

scoreboard players operation <year> variable /= #12 constant
execute store result storage pandamium:temp date[0] int 1 run scoreboard players add <year> variable 2000
# year  = (hour_id / 24) / 31 / 12 + 2000
