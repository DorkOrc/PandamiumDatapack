data modify storage pandamium:temp get_integer_uuid.input set from storage pandamium:temp arguments.suuid

data modify storage pandamium:temp uuid set value [I;]
scoreboard players set <multiplier> variable 268435456
scoreboard players set <sum> variable 0
function pandamium:impl/database/players/force_add_user_to_database/get_integer_uuid/loop

execute store result storage pandamium:temp arguments.uuid0 int 1 run data get storage pandamium:temp uuid[0]
execute store result storage pandamium:temp arguments.uuid1 int 1 run data get storage pandamium:temp uuid[1]
execute store result storage pandamium:temp arguments.uuid2 int 1 run data get storage pandamium:temp uuid[2]
execute store result storage pandamium:temp arguments.uuid3 int 1 run data get storage pandamium:temp uuid[3]

execute unless data storage pandamium:temp uuid[3] run scoreboard players set <valid_suuid> variable 0
execute if data storage pandamium:temp uuid[4] run scoreboard players set <valid_suuid> variable 0
