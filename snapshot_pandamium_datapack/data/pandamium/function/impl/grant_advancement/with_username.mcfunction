# arguments: index, advancement

$data modify storage pandamium.db.players:data entries[$(index)].data.join_events append value {type:"grant_advancement",advancement:"$(advancement)"}
