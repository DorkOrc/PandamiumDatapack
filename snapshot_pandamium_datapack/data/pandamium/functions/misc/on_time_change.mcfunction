# Gets run at 10 past every hour, after the global time variables are updated

execute store result score <last_time_change_gametime> global run time query gametime

execute if score <day> global matches 1 if score <hour> global matches 0 function pandamium:misc/monthly_reset
