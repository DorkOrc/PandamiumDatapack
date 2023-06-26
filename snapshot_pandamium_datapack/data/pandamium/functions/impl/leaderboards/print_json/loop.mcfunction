data modify block 3 0 0 front_text.messages[0] set value '["{\\"display_name\\":",{"nbt":"entries[0].display_name","storage":"pandamium:temp"},",\\"username\\":\\"",{"nbt":"entries[0].username","storage":"pandamium:temp"},"\\",\\"value\\":",{"nbt":"entries[0].value","storage":"pandamium:temp"},"}"]'
execute if data storage pandamium:temp entries[0].display_name run data modify storage pandamium:temp json_entries append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:impl/leaderboards/print_json/loop
