#{
#	action: "refresh_usernames_map",
#	usernames: [STRING, ...]
#}

data modify storage pandamium:templates macro.name.name set from storage pandamium:queue selected.entry.usernames[-1]
function pandamium:impl/usernames_map/add_name/main with storage pandamium:templates macro.name

# continue
data remove storage pandamium:queue selected.entry.usernames[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.usernames[]
execute if data storage pandamium:queue selected.entry.usernames[0] run return run function pandamium:impl/queue/utils/continue
