# inputs:
# - score <datetime_id> variable
# outputs:
# - score <seconds_since_2000> variable

function pandamium:utils/datetime/decompose_datetime_id

# check if the current year is a leap year
scoreboard players operation <is_leap_year> variable = <year> variable
scoreboard players operation <is_leap_year> variable %= #4 constant
execute store success score <is_leap_year> variable if score <is_leap_year> variable matches 0

# calculate leap_days_in_prior_years_since_2000
scoreboard players operation <leap_days_in_prior_years_since_2000> variable = <year> variable
scoreboard players remove <leap_days_in_prior_years_since_2000> variable 1997
scoreboard players operation <leap_days_in_prior_years_since_2000> variable /= #4 constant

# calculate days_since_2000 
scoreboard players operation <days_since_2000> variable = <year> variable
scoreboard players remove <days_since_2000> variable 2000
scoreboard players operation <days_since_2000> variable *= #365 constant
scoreboard players operation <days_since_2000> variable += <leap_days_in_prior_years_since_2000> variable
execute if score <month> variable matches 2.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 3.. run scoreboard players add <days_since_2000> variable 28
execute if score <month> variable matches 3.. run scoreboard players operation <days_since_2000> variable += <is_leap_year> variable
execute if score <month> variable matches 4.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 5.. run scoreboard players add <days_since_2000> variable 30
execute if score <month> variable matches 6.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 7.. run scoreboard players add <days_since_2000> variable 30
execute if score <month> variable matches 8.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 9.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 10.. run scoreboard players add <days_since_2000> variable 30
execute if score <month> variable matches 11.. run scoreboard players add <days_since_2000> variable 31
execute if score <month> variable matches 12 run scoreboard players add <days_since_2000> variable 30
scoreboard players operation <days_since_2000> variable += <day> variable
execute store result score <seconds_since_2000> variable run scoreboard players remove <days_since_2000> variable 1

# calculate seconds_since_2000 = ((days_since_2000 * 24 + HOUR) * 60 + MINUTE) * 60 + SECOND
scoreboard players operation <seconds_since_2000> variable *= #24 constant
scoreboard players operation <seconds_since_2000> variable += <hour> variable
scoreboard players operation <seconds_since_2000> variable *= #60 constant
scoreboard players operation <seconds_since_2000> variable += <minute> variable
scoreboard players operation <seconds_since_2000> variable *= #60 constant
return run scoreboard players operation <seconds_since_2000> variable += <second> variable
