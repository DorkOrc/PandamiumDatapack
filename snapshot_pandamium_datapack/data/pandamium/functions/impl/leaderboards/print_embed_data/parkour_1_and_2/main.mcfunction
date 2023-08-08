data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.parkour_1.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/parkour_1_and_2/parkour_1_loop
data modify storage pandamium:temp parkour_1_json_entries set from storage pandamium:temp json_entries

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.parkour_2.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_embed_data/parkour_1_and_2/parkour_2_loop
data modify storage pandamium:temp parkour_2_json_entries set from storage pandamium:temp json_entries

tellraw @s ["[{\"title\":\"Caves and Cliffs Parkour\",\"footer\":\"View the full *Caves and Cliffs Parkour* leaderboard, on our [website](<https://www.pandamium.com/info/leaderboards/caves-and-cliffs>)!\",\"color\":\"#00DFFF\",\"entry_format\":\"%s Mins & %s Secs\",\"entries\":[",{"nbt": "parkour_1_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]},{\"title\":\"Monstrosity Parkour\",\"footer\":\"View the full *Monstrosity Parkour* leaderboard, on our [website](<https://www.pandamium.com/info/leaderboards/monstrosity>)!\",\"color\":\"#FFDF00\",\"entry_format\":\"%s Hrs & %s Mins\",\"entries\":[",{"nbt": "parkour_2_json_entries[]","storage": "pandamium:temp","interpret": true,"separator": ","},"]}]"]
