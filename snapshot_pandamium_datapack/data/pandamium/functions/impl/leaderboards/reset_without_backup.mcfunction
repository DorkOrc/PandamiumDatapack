# arguments: type

$data modify storage pandamium:leaderboards $(type) set value {entries:[]}

$data modify storage pandamium:temp type set value "$(type)"
$execute if data storage pandamium:temp {type: "total_votes"} run \
    data modify storage pandamium:leaderboards $(type) merge value {template:"generic",source_objective:"votes",operation:"none",max_entries:15,buffer_entries:5}
$execute if data storage pandamium:temp {type: "total_playtime"} run \
    data modify storage pandamium:leaderboards $(type) merge value {template:"generic",source_objective:"playtime_ticks",operation:"ticks_to_hours",max_entries:15,buffer_entries:5}
$execute if data storage pandamium:temp {type: "monthly_votes"} run \
    data modify storage pandamium:leaderboards $(type) merge value {template:"generic",source_objective:"monthly_votes",operation:"none",max_entries:15,buffer_entries:5}
$execute if data storage pandamium:temp {type: "monthly_playtime"} run \
    data modify storage pandamium:leaderboards $(type) merge value {template:"generic",source_objective:"monthly_playtime_ticks",operation:"ticks_to_hours",max_entries:15,buffer_entries:5}
