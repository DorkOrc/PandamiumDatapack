# Gets ran by an external program at 10 past every hour, after the global time variables are updated

# store gametime on hour change
execute store result score <last_time_change_gametime> global run time query gametime

# update hour index
function pandamium:misc/update_hour_id

# on month start
execute if score <day> global matches 1 if score <hour> global matches 0 run function pandamium:misc/on_month_start
