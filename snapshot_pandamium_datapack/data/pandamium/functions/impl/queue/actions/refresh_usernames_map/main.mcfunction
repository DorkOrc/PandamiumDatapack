#{
#	action: "refresh_usernames_map",
#	usernames: [STRING, ...]
#}

data modify storage pandamium:templates macro.name.name set from storage pandamium:queue selected.entry.usernames[-1]
function pandamium:impl/usernames_map/add_name/main with storage pandamium:templates macro.name

# report progress
execute store result score <value> variable run data get storage pandamium:queue selected.entry.meta.max
execute store result score <remaining> variable if data storage pandamium:queue selected.entry.usernames[]
execute store result storage pandamium:queue selected.entry.meta.value int 1 run scoreboard players operation <value> variable -= <remaining> variable

# repeat
data remove storage pandamium:queue selected.entry.usernames[-1]
execute if data storage pandamium:queue selected.entry.usernames[0] run return run function pandamium:impl/queue/utils/continue
