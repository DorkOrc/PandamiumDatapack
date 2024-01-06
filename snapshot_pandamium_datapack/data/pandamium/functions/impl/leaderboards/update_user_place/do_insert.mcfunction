# arguments: type, index, (username, id, value, source_objective, operation, max_entries)
$data modify storage pandamium:leaderboards leader_boards.$(type).entries insert $(index) from storage pandamium:temp group_entry
$data modify storage pandamium:leaderboards leader_boards.$(type).entries[$(index)].players append from storage pandamium:temp player_entry
