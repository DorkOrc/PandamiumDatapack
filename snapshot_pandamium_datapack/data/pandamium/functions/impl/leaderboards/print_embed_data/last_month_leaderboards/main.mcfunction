data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_playtime.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_playtime_loop
data modify storage pandamium:temp monthly_playtime_json_entries set from storage pandamium:temp json_entries

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_votes.format
data modify storage pandamium:temp json_entries set value []
scoreboard players set <index> variable 0
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
data modify storage pandamium:temp monthly_votes_json_entries set from storage pandamium:temp json_entries

# get date
execute store result score <backup_year> variable run data get storage pandamium:leaderboards backups.monthly_votes.date[0]
execute store result score <backup_month> variable run data get storage pandamium:leaderboards backups.monthly_votes.date[1]

execute if score <backup_month> variable matches 1 run scoreboard players remove <backup_year> variable 1
scoreboard players remove <backup_month> variable 1
execute if score <backup_month> variable matches 0 run scoreboard players set <backup_month> variable 12

execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players remove <backup_month> variable 1
function pandamium:utils/get/month_name with storage pandamium:templates macro.index

# format string, flatten string, escape quotes, print copy button
data modify storage pandamium:text input set value '["[{\\"title\\":\\"Monthly Playtime Leaderboard - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Hrs & %s Mins\\",\\"entries\\":[",{"nbt": "monthly_playtime_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]},{\\"title\\":\\"Monthly Votes Leaderboard - ",{"storage":"pandamium:temp","nbt":"month_name"}," ",{"score":{"name":"<backup_year>","objective":"variable"}},"\\",\\"color\\":\\"#00FF0F\\",\\"entry_format\\":\\"%s Votes\\",\\"entries\\":[",{"nbt": "monthly_votes_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]}]"]'
scoreboard players set <reset_max_command_chain_length> global 1
gamerule maxCommandChainLength 1048576
function pandamium:utils/text/flatten_json/quick
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:text","nbt":"output"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.contents.contents set string block 3 0 0 front_text.messages[0] 1 -1
function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/print_copy_button with storage pandamium:templates macro.contents
