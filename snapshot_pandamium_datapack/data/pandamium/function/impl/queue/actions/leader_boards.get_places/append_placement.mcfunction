# arguments: place, place_suffix, username, leader_board_name, leader_board_type, values

data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data set value {components:[],credits:0,flairs_perk:false}
data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.id set from storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".id
data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.username set from storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".username
$data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data set from storage pandamium:queue selected.entry.places[{username:$(username)}]

$data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".this_reward set from storage pandamium:dictionary monthly_leader_board_rewards.$(place)

execute store result score <new_credits> variable run data get storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".this_reward.credits
execute if score <new_credits> variable matches ..0 run return 0

execute store result score <total_credits> variable run data get storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.credits
execute store result storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.credits int 1 run scoreboard players operation <total_credits> variable += <new_credits> variable

execute if data storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".this_reward{flairs_perk:true} run data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.flairs_perk set value true

$data modify storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data.components append value {color:"gold",text:"$(place)$(place_suffix) in $(leader_board_name)"}

$data modify storage pandamium:queue selected.entry.places[{username:$(username)}] merge from storage pandamium:local functions."pandamium:impl/queue/actions/leader_boards.get_places/*".player_data

$data modify storage pandamium:queue selected.entry.json_components.$(leader_board_type) append value '{"username":"$(username)","values":$(values),"place":$(place)}'
