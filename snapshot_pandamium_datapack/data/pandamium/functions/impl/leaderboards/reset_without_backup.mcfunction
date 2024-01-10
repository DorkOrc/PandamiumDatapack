# arguments: type

$data modify storage pandamium:leaderboards leader_boards.$(type) set value {entries:[]}

$data modify storage pandamium:temp type set value "$(type)"
execute if data storage pandamium:temp {type:"total_votes"} run data modify storage pandamium:leaderboards leader_boards.total_votes merge value {title: "Total Votes", template: "generic", source_objective: "votes", operation: "none", max_entries: 15, buffer_entries: 5}
execute if data storage pandamium:temp {type:"total_playtime"} run data modify storage pandamium:leaderboards leader_boards.total_playtime merge value {title: "Total Playtime", template: "generic", source_objective: "playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5}
execute if data storage pandamium:temp {type:"monthly_votes"} run data modify storage pandamium:leaderboards leader_boards.monthly_votes merge value {title: "Monthly Votes", template: "generic", source_objective: "monthly_votes", operation: "none", max_entries: 15, buffer_entries: 5}
execute if data storage pandamium:temp {type:"monthly_playtime"} run data modify storage pandamium:leaderboards leader_boards.monthly_playtime merge value {title: "Monthly Playtime", template: "generic", source_objective: "monthly_playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5}
execute if data storage pandamium:temp {type:"yearly_votes"} run data modify storage pandamium:leaderboards leader_boards.yearly_votes merge value {title: "Yearly Votes", template: "generic", source_objective: "yearly_votes", operation: "none", max_entries: 15, buffer_entries: 5}
execute if data storage pandamium:temp {type:"yearly_playtime"} run data modify storage pandamium:leaderboards leader_boards.yearly_playtime merge value {title: "Yearly Playtime", template: "generic", source_objective: "yearly_playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5}
