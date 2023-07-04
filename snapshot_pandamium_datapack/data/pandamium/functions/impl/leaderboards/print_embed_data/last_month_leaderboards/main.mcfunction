data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_playtime.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_playtime_loop
data modify storage pandamium:temp monthly_playtime_json_entries set from storage pandamium:temp json_entries

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_votes.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
data modify storage pandamium:temp monthly_votes_json_entries set from storage pandamium:temp json_entries

tellraw @s ["[{\"title\":\"Monthly Playtime Leaderboard\",\"color\":\"#00FF0F\",\"entry_format\":\"%s Hrs & %s Mins\",\"date\":[",{"nbt": "backups.monthly_playtime.date[]","storage": "pandamium:leaderboards","separator": ","},"],\"entries\":[",{"nbt": "monthly_playtime_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]},{\"title\":\"Monthly Votes Leaderboard\",\"color\":\"#00FF0F\",\"entry_format\":\"%s Votes\",\"date\":[",{"nbt": "backups.monthly_votes.date[]","storage": "pandamium:leaderboards","separator": ","},"],\"entries\":[",{"nbt": "monthly_votes_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]}]"]
