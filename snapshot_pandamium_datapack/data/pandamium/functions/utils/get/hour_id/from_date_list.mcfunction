# inputs: 
# - storage pandamium:temp date
# outputs:
# - score <hour_id> variable

execute store result score <year> variable run data get storage pandamium:temp date[0]
execute store result score <month> variable run data get storage pandamium:temp date[1]
execute store result score <day> variable run data get storage pandamium:temp date[2]
execute store result score <hour> variable run data get storage pandamium:temp date[3]

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
scoreboard players operation <hour_id> variable = <year> variable
scoreboard players remove <hour_id> variable 2000
scoreboard players operation <hour_id> variable *= #12 constant
scoreboard players operation <hour_id> variable += <month> variable
scoreboard players remove <hour_id> variable 1
scoreboard players operation <hour_id> variable *= #31 constant
scoreboard players operation <hour_id> variable += <day> variable
scoreboard players remove <hour_id> variable 1
scoreboard players operation <hour_id> variable *= #24 constant
scoreboard players operation <hour_id> variable += <hour> variable
