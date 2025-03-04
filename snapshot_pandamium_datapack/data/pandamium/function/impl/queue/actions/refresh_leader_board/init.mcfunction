# arguments: type

data modify storage pandamium:queue selected.entry.meta.name set value ["Refreshing ",[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"selected.entry.type"},"]"]]

data modify storage pandamium:queue selected.entry.usernames set value []
data modify storage pandamium:queue selected.entry.usernames append from storage pandamium.db.players:data entries[].username

$execute unless data storage pandamium.leader_boards:data leader_boards.$(type) run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.usernames[]
