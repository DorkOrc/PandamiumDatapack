data modify storage pandamium:leaderboards total_votes set value { title: "Total Votes", template: "generic", source_objective: "votes", operation: "none", max_entries: 15, buffer_entries: 5, entries: []}
data modify storage pandamium:leaderboards total_playtime set value { title: "Total Playtime",template: "generic", source_objective: "playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5, entries: []}
data modify storage pandamium:leaderboards monthly_votes set value { title: "Monthly Votes",template: "generic", source_objective: "monthly_votes", operation: "none", max_entries: 15, buffer_entries: 5, entries: []}
data modify storage pandamium:leaderboards monthly_playtime set value { title: "Monthly Playtime",template: "generic", source_objective: "monthly_playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5, entries: []}

function pandamium:impl/leaderboards/refresh/main {type:"total_votes"}
function pandamium:impl/leaderboards/refresh/main {type:"total_playtime"}
function pandamium:impl/leaderboards/refresh/main {type:"monthly_votes"}
function pandamium:impl/leaderboards/refresh/main {type:"monthly_playtime"}
