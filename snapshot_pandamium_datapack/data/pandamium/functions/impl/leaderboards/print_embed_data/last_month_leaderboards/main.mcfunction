data modify storage pandamium:temp components set value []

# get date
execute store result score <backup_year> variable run data get storage pandamium:leaderboards backups.monthly_votes.date[0]
execute store result score <backup_month> variable run data get storage pandamium:leaderboards backups.monthly_votes.date[1]

execute if score <backup_month> variable matches 1 run scoreboard players remove <backup_year> variable 1
scoreboard players remove <backup_month> variable 1
execute if score <backup_month> variable matches 0 run scoreboard players set <backup_month> variable 12

execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players remove <backup_month> variable 1
function pandamium:utils/get/month_name with storage pandamium:templates macro.index

# monthly playtime
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["[{\\"title\\":\\"Monthly Playtime Leaderboard - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Hrs & %s Mins\\",\\"entries\\":["]'
execute in pandamium:staff_world run data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_playtime.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_playtime_loop
data remove storage pandamium:temp components[-1]

# monthly votes
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '["]},{\\"title\\":\\"Monthly Votes Leaderboard - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Votes\\",\\"entries\\":["]'
execute in pandamium:staff_world run data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_votes.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
data remove storage pandamium:temp components[-1]

# end
data modify storage pandamium:temp components append value '"]}]"'

# start flattening

data modify storage pandamium:queue queue append value {action:"leaderboards.generate_embed_json",source:"@s",components:[],output:""}

function pandamium:utils/get/username
data modify storage pandamium:queue queue[-1].source set from storage pandamium:temp username

data modify storage pandamium:queue queue[-1].components set from storage pandamium:temp components

# format string, flatten string, escape quotes, print copy button
