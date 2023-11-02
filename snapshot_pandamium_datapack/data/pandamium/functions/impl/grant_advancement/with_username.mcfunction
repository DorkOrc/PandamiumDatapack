# arguments: index, advancement

$data modify storage pandamium.db:players entries[$(index)].data.join_events append value {type:"grant_advancement",advancement:"$(advancement)"}
