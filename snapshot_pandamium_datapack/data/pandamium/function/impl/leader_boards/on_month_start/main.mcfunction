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
function pandamium:impl/leader_boards/set_up_leader_board_configs
scoreboard players set <leader_boards.leader_board.monthly_playtime.highest_value> global -2147483648
scoreboard players set <leader_boards.leader_board.monthly_votes.highest_value> global -2147483648
scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes
execute as @a run function pandamium:player/teams/update_suffix

function pandamium:utils/leader_board/update_hologram/all

# grant rewards
data modify storage pandamium:queue entries append value {action:"leader_boards.get_places",meta:{do_bossbar:1b}}
function pandamium:utils/get/month_name with storage pandamium.leader_boards:data previous_month_data
data modify storage pandamium:queue entries[-1].month_name set from storage pandamium:temp month_name
data modify storage pandamium:queue entries[-1].year set from storage pandamium.leader_boards:data previous_month_data.year
