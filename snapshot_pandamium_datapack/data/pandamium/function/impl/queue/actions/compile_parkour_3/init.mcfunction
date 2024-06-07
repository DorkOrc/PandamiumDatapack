execute unless data storage pandamium:queue selected.entry.meta.name run data modify storage pandamium:queue selected.entry.meta.name set value '"Search Nearby for Homes"'

data modify storage pandamium:queue selected.entry.usernames set value []
data modify storage pandamium:queue selected.entry.usernames append from storage pandamium.db.players:data entries[].username
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.usernames[]

data modify storage pandamium:queue selected.entry.output set value {nbt:[]}
