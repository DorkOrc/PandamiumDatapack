# arguments: type

$execute unless data storage pandamium:leaderboards previous_month_data.backups.$(type).entries run return fail

data modify storage pandamium:temp arguments set value {}
$data modify storage pandamium:temp arguments.leaderboard_name set from storage pandamium:leaderboards previous_month_data.backups.$(type).title

$data modify storage pandamium:temp entries set from storage pandamium:leaderboards previous_month_data.backups.$(type).entries
data modify storage pandamium:temp entries[0].place set value 1
data modify storage pandamium:temp entries[1].place set value 2
data modify storage pandamium:temp entries[2].place set value 3
data modify storage pandamium:temp entries[3].place set value 4
data modify storage pandamium:temp entries[4].place set value 5
data modify storage pandamium:temp entries[5].place set value 6
data modify storage pandamium:temp entries[6].place set value 7
data modify storage pandamium:temp entries[7].place set value 8
data modify storage pandamium:temp entries[8].place set value 9
data modify storage pandamium:temp entries[9].place set value 10
data modify storage pandamium:temp entries[10].place set value 11
data modify storage pandamium:temp entries[11].place set value 12
data modify storage pandamium:temp entries[12].place set value 13
data modify storage pandamium:temp entries[13].place set value 14
data modify storage pandamium:temp entries[14].place set value 15

execute if data storage pandamium:temp entries[0].place run function pandamium:impl/leaderboards/on_month_start/get_player_reward_data/loop
