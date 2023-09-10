function pandamium:impl/teams/init_arguments

function pandamium:utils/database/players/load/self
data modify storage pandamium:temp arguments.username set from storage pandamium.db:players selected.entry.username

data modify storage pandamium:temp arguments.custom_suffix set from storage pandamium.db:players selected.entry.data.custom_suffix
execute unless data storage pandamium:temp arguments{custom_suffix:'""'} run data modify storage pandamium:temp arguments.separator set value '" "'

function pandamium:impl/teams/update_suffix with storage pandamium:temp arguments
