# arguments: target

#$data modify storage pandamium:queue entries[-1].triggers append from storage pandamium.db:cache online_players[{username:$(target)}].triggers[{is_home:1b}].trigger_name
#$data remove storage pandamium.db:cache online_players[{username:$(target)}].triggers[{is_home:1b}]
