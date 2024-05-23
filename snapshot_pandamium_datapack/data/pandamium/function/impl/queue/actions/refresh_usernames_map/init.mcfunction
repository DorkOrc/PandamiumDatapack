data modify storage pandamium:queue selected.entry.meta.value set value 0
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.usernames[]

data modify storage pandamium:global usernames_map set value []
