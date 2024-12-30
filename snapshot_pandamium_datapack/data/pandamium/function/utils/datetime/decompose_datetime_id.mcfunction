# input: 
# - score <datetime_id> variable
# outputs:
# - score <year> variable
# - score <month> variable
# - score <day> variable
# - score <hour> variable
# - score <minute> variable
# - score <second> variable

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
# datetime_id = (hour_id*60+minute)*60+second

# datetime_id = (((((year-2000)*12+month-1)*31+day-1)*24+hour)*60+minute)*60+second
# datetime_id%60 = second

# datetime_id//60 = ((((year-2000)*12+month-1)*31+day-1)*24+hour)*60+minute
# (datetime_id//60)%60 = minute

# datetime_id//60//60 = (((year-2000)*12+month-1)*31+day-1)*24+hour
# (datetime_id//60//60)%24 = hour

# datetime_id//60//60//24 = ((year-2000)*12+month-1)*31+day-1
# (datetime_id//60//60//24)%31 = day-1

# datetime_id//60//60//24//31 = (year-2000)*12+month-1
# (datetime_id//60//60//24//31)%12 = month-1

# datetime_id//60//60//24//31//12 = year-2000

execute store result score <minute> variable run scoreboard players operation <second> variable = <datetime_id> variable
scoreboard players operation <second> variable %= #seconds_per_minute constant

execute store result score <hour> variable run scoreboard players operation <minute> variable /= #seconds_per_minute constant
scoreboard players operation <minute> variable %= #minutes_per_hour constant

execute store result score <day> variable run scoreboard players operation <hour> variable /= #minutes_per_hour constant
scoreboard players operation <hour> variable %= #24 constant

execute store result score <month> variable run scoreboard players operation <day> variable /= #24 constant
scoreboard players operation <day> variable %= #31 constant
scoreboard players add <day> variable 1

execute store result score <year> variable run scoreboard players operation <month> variable /= #31 constant
scoreboard players operation <month> variable %= #12 constant
scoreboard players add <month> variable 1

scoreboard players operation <year> variable /= #12 constant
scoreboard players add <year> variable 2000
