# Ran by external program
# arguments: username, service

$data modify storage pandamium:local functions."pandamium:player/on_vote/*" set value {service:"$(service)",username:"$(username)"}
data remove storage pandamium.db.players:io selected

# fix for case sensetivity
data modify storage do:io input set from storage pandamium:local functions."pandamium:player/on_vote/*".username
function do:str/lower
data modify storage pandamium:local functions."pandamium:player/on_vote/*".lowercase_username set from storage do:io output
function pandamium:utils/database/players/load/from_lowercase_username with storage pandamium:local functions."pandamium:player/on_vote/*"
data modify storage pandamium:local functions."pandamium:player/on_vote/*".username set from storage pandamium.db.players:io selected.entry.username

# do vote
function pandamium:player/on_vote/logic with storage pandamium:local functions."pandamium:player/on_vote/*"
