# arguments: home

data remove storage pandamium:temp home
$data modify storage pandamium:temp home set from storage pandamium.db:players selected.entry.data.homes.$(home)
