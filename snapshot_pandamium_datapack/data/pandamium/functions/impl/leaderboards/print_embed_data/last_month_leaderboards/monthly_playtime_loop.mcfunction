data modify block 3 0 0 front_text.messages[0] set value '["{\\"username\\":\\"",{"nbt":"entries[0].username","storage":"pandamium:temp"},"\\",\\"values\\":[",{"nbt":"entries[0].time[3]","storage":"pandamium:temp"},",",{"nbt":"entries[0].time[2]","storage":"pandamium:temp"},"]}"]'
execute if data storage pandamium:temp entries[0].display_name run data modify storage pandamium:temp json_entries append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_playtime_loop
