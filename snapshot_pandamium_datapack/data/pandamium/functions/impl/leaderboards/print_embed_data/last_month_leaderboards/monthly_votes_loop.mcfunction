data modify block 3 0 0 front_text.messages[0] set value '["{\\"username\\":\\"",{"nbt":"entries[0].display.name","storage":"pandamium:temp","interpret":true},"\\",\\"values\\":[",{"nbt":"entries[0].value","storage":"pandamium:temp"},"],\\"place\\":",{"storage":"pandamium:temp","nbt":"entries[0].place"},"}"]'
data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]
data modify storage pandamium:temp components append value '","'

data remove storage pandamium:temp entries[0]
scoreboard players add <index> variable 1
execute if score <index> variable matches 0..14 if data storage pandamium:temp entries[0] run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
