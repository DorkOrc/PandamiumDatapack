#> Log In
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".player_data set from entity @s {}
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid set from storage pandamium:local functions."pandamium:impl/database/players/on_join/*".player_data.UUID

data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid_0 set from storage pandamium:temp uuid[0]
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid_1 set from storage pandamium:temp uuid[1]
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid_2 set from storage pandamium:temp uuid[2]
data modify storage pandamium:local functions."pandamium:impl/database/players/on_join/*".uuid_3 set from storage pandamium:temp uuid[3]

function pandamium:impl/database/players/on_join/fetch_index with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"

#> Post
# load
function pandamium:utils/database/players/load/self

# store/modify
execute store result score @s alt_of run data get storage pandamium.db.players:io selected.entry.data.alt_of.id
execute unless data storage pandamium.db.players:io selected.entry.data.alt_of.id run scoreboard players reset @s alt_of

execute if data storage pandamium.db.players:io selected.entry.data.pronouns_type store result score @s pronouns_type run data get storage pandamium.db.players:io selected.entry.data.pronouns_type

execute if data storage pandamium.db.players:io selected.entry.data.custom_dye store result score @s custom_dye.type run data get storage pandamium.db.players:io selected.entry.data.custom_dye.type
execute if data storage pandamium.db.players:io selected.entry.data.custom_dye{off:true} run scoreboard players set @s custom_dye.off 1

execute store result score @s parkour_4.attempts run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.attempts
execute store result score @s parkour_4.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.falls
execute store result score @s parkour_4.jumps run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.jumps
execute store result score @s parkour_4.completions run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.completions
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time store result score @s parkour_4.shortest_time.time run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.time
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time store result score @s parkour_4.shortest_time.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.falls
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls store result score @s parkour_4.fewest_falls.time run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.time
execute if data storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls store result score @s parkour_4.fewest_falls.falls run data get storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.falls

execute if data storage pandamium.db.players:io selected.entry.data.join_events run function pandamium:impl/database/players/on_join/join_events/main

function pandamium:impl/database/cache/on_join/main with storage pandamium.db.players:io selected.entry

# save
function pandamium:utils/database/players/save
data remove storage pandamium:local functions."pandamium:impl/database/players/on_join/*"
