data remove storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].active
data remove storage pandamium.db.players:io selected.entry.data.voting.streaks[-2].unread

data modify storage pandamium.db.players:io selected.entry.data.voting.streaks append value {active:1b,votes:0}
execute store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].start_datetime int 1 store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].last_vote_datetime int 1 run function pandamium:utils/datetime/get_current_datetime_id
