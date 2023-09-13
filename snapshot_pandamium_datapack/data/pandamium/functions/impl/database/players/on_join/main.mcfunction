#> Log In
data modify storage pandamium:temp uuid set from entity @s UUID

data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid0 set from storage pandamium:temp uuid[0]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid1 set from storage pandamium:temp uuid[1]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid2 set from storage pandamium:temp uuid[2]
data modify storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3.uuid3 set from storage pandamium:temp uuid[3]

function pandamium:impl/database/players/on_join/fetch_index with storage pandamium:templates macro.uuid0__uuid1__uuid2__uuid3

#> Post
function pandamium:utils/database/players/load/self

execute store result score @s alt_of run data get storage pandamium.db:players selected.entry.data.alt_of.id
execute unless data storage pandamium.db:players selected.entry.data.alt_of.id run scoreboard players reset @s alt_of

function pandamium:impl/database/cache/on_join/main with storage pandamium.db:players selected.entry
