# arguments: id, bad_id, old, new, index

# A has ID 123
# A as "B" joins
# "B" has ID 99999

# solution:
# - set "B" entry.ID to A ID,
# - set A ID in id_indexes to correct index,
# - remove "B" ID from id_indexes,
# - set "B" ID to A ID,

$execute store result storage pandamium.db:players entries[$(index)].id int 1 run scoreboard players get $(old) id
$data modify storage pandamium.db:players id_indexes."$(id)" set from storage pandamium.db:players username_indexes."$(new)"
$data remove storage pandamium.db:players id_indexes."$(bad_id)"
