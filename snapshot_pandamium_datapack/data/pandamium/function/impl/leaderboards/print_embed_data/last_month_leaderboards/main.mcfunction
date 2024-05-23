data modify storage pandamium:temp components set value []

# get date
execute store result score <backup_year> variable run data get storage pandamium.leader_boards:data previous_month_data.year
execute store result score <backup_month> variable run data get storage pandamium.leader_boards:data previous_month_data.month

execute store result storage pandamium:templates macro.month.month int 1 run scoreboard players get <backup_month> variable
function pandamium:utils/get/month_name with storage pandamium:templates macro.month

# monthly playtime
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["[{\\"title\\":\\"Monthly Playtime Leader Board - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Hrs & %s Mins\\",\\"entries\\":["]'
execute in pandamium:staff_world run data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]

data modify storage pandamium:temp entries set from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_playtime_loop
data remove storage pandamium:temp components[-1]

# monthly votes
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["]},{\\"title\\":\\"Monthly Votes Leader Board - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Votes\\",\\"entries\\":["]'
execute in pandamium:staff_world run data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]

data modify storage pandamium:temp entries set from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
data remove storage pandamium:temp components[-1]

# end
data modify storage pandamium:temp components append value '"]}]"'

# start flattening

data modify storage pandamium:queue entries append value {action:"leaderboards.generate_embed_json",source:"@s",components:[],output:""}

function pandamium:utils/get/username
data modify storage pandamium:queue entries[-1].source set from storage pandamium:temp username

data modify storage pandamium:queue entries[-1].components set from storage pandamium:temp components

# format string, flatten string, escape quotes, print copy button
