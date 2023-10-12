# Gets ran by an external program at 10 past every hour, after the global time variables are updated

# store gametime on hour change
execute store result score <last_time_change_gametime> global run time query gametime

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
data modify storage pandamium:global recent_hour_ids append value 0
scoreboard players operation <hour_id> global = <year> global
scoreboard players remove <hour_id> global 2000
scoreboard players operation <hour_id> global *= #12 constant
scoreboard players operation <hour_id> global += <month> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #31 constant
scoreboard players operation <hour_id> global += <day> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #24 constant
execute store result storage pandamium:global recent_hour_ids[-1] int 1 run scoreboard players operation <hour_id> global += <hour> global
execute if data storage pandamium:global recent_hour_ids[24] run data remove storage pandamium:global recent_hour_ids[0]
# data remove storage pandamium.db:players entries[].data.TPs[{hour_id:$(hour_id)}] <-- old hour id

# on month start
execute if score <day> global matches 1 if score <hour> global matches 0 run function pandamium:misc/on_month_start
