# outputs:
# - score <datetime_id> variable

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
# datetime_id = (hour_id*60+minute)*60+second
# datetime_id = (((((year-2000)*12+month-1)*31+day-1)*24+hour)*60+minute)*60+second

scoreboard players operation <datetime_id> variable = <hour_id> global
scoreboard players operation <datetime_id> variable *= #60 constant
scoreboard players operation <datetime_id> variable += <precise_minute> global
scoreboard players operation <datetime_id> variable *= #60 constant
return run scoreboard players operation <datetime_id> variable += <precise_second> global
