data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_playtime.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_json/loop
data modify storage pandamium:temp monthly_playtime_json_entries set from storage pandamium:temp json_entries

data modify storage pandamium:temp entries set from storage pandamium:leaderboards backups.monthly_votes.contents
data modify storage pandamium:temp json_entries set value []
execute in pandamium:staff_world run function pandamium:impl/leaderboards/print_json/loop
data modify storage pandamium:temp monthly_votes_json_entries set from storage pandamium:temp json_entries

tellraw @s ["{\"monthly_playtime\":[",{"nbt":"monthly_playtime_json_entries[]","storage":"pandamium:temp","interpret":true,"separator":","},",\"monthly_votes\":[",{"nbt":"monthly_votes_json_entries[]","storage":"pandamium:temp","interpret":true,"separator":","},"],\"date\":[",{"nbt":"backups.monthly_playtime.date[]","storage":"pandamium:leaderboards","separator":","},"]}"]
