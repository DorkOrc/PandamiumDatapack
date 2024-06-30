# arguments: home, user_id

$execute if data storage pandamium:cache online_players[{id:$(user_id)}].dynamic_triggers[{home_slot:$(home_slot)}] run function pandamium:impl/dynamic_triggers/remove_alias_target/main with storage pandamium:cache online_players[{id:$(user_id)}].dynamic_triggers[{home_slot:$(home_slot)}]
$data remove storage pandamium:cache online_players[{id:$(user_id)}].dynamic_triggers[{home_slot:$(home_slot)}]
