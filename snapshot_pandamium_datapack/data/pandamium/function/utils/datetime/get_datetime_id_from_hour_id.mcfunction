# inputs:
# - score <hour_id> variable
# outputs:
# - score <datetime_id> variable

# assume minutes and seconds are zero
scoreboard players operation <datetime_id> variable = <hour_id> variable
return run scoreboard players operation <datetime_id> variable *= #3600 constant
