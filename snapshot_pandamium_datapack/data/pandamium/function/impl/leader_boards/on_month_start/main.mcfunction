# erase old data
data remove storage pandamium.leader_boards:data previous_month_data
data modify storage pandamium.leader_boards:data previous_month_data set value {backups: {}, month: 0, year: 0}

# store date
scoreboard players operation <month> variable = <month> global
scoreboard players operation <year> variable = <year> global

scoreboard players remove <month> variable 1
execute if score <month> variable matches 0 run scoreboard players remove <year> variable 1
execute if score <month> variable matches 0 run scoreboard players set <month> variable 12

execute store result storage pandamium.leader_boards:data previous_month_data.month int 1 run scoreboard players get <month> variable
execute store result storage pandamium.leader_boards:data previous_month_data.year int 1 run scoreboard players get <year> variable

# back up and then reset monthly leader boards
data modify storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime set from storage pandamium.leader_boards:data leader_boards.monthly_playtime
data modify storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes set from storage pandamium.leader_boards:data leader_boards.monthly_votes

data remove storage pandamium.leader_boards:data leader_boards.monthly_playtime
data remove storage pandamium.leader_boards:data leader_boards.monthly_votes

# grant rewards
data modify storage pandamium:queue entries append value {action:"leader_boards.get_places",meta:{do_bossbar:1b}}
function pandamium:utils/get/month_name with storage pandamium.leader_boards:data previous_month_data
data modify storage pandamium:queue entries[-1].month_name set from storage pandamium:temp month_name
data modify storage pandamium:queue entries[-1].year set from storage pandamium.leader_boards:data previous_month_data.year
