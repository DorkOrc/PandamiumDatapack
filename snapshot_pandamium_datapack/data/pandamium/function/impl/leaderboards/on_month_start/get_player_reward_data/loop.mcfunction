function pandamium:utils/get/username/from_id with storage pandamium:temp entries[0].players[0]
data modify storage pandamium:temp arguments.username set from storage pandamium:temp username

execute store result storage pandamium:temp arguments.id int 1 run data get storage pandamium:temp entries[0].players[0].id

execute store result storage pandamium:temp arguments.place int 1 store result score <place> variable run data get storage pandamium:temp entries[0].place

data modify storage pandamium:temp arguments.place_suffix set value "th"
execute if data storage pandamium:temp arguments{place:1} run data modify storage pandamium:temp arguments.place_suffix set value "st"
execute if data storage pandamium:temp arguments{place:2} run data modify storage pandamium:temp arguments.place_suffix set value "nd"
execute if data storage pandamium:temp arguments{place:3} run data modify storage pandamium:temp arguments.place_suffix set value "rd"

function pandamium:impl/leaderboards/on_month_start/get_player_reward_data/add_reward with storage pandamium:temp arguments

data remove storage pandamium:temp entries[0].players[0]
execute unless data storage pandamium:temp entries[0].players[0] run data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0].place run function pandamium:impl/leaderboards/on_month_start/get_player_reward_data/loop
