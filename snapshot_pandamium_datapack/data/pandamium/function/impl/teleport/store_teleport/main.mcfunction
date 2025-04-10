# check if this is from the "die" source
execute store success score <from_death> variable if data storage pandamium:templates teleport{source:"die"}

# fail if player is already nearby
execute if score <from_death> variable matches 0 if entity @s[distance=..10] run return run data remove storage pandamium:templates teleport.source

# get destination
scoreboard players set <dimension> variable 0
execute if score <from_death> variable matches 1 run function pandamium:impl/teleport/store_teleport/store_spawnpoint
execute if score <from_death> variable matches 0 run function pandamium:impl/teleport/store_teleport/store_destination
function pandamium:utils/get/dimension_string_id/from_score
data modify storage pandamium:local functions."pandamium:impl/teleport/store_teleport/main".to_dimension_string_id set from storage pandamium:temp dimension_string_id

# get starting location
execute at @s run function pandamium:utils/get/position
execute store result storage pandamium:templates teleport.from[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates teleport.from[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates teleport.from[2] int 1 run scoreboard players get <z> variable
execute at @s store result storage pandamium:templates teleport.from[3] int 1 store result score <dimension> variable run function pandamium:utils/get/dimension_id
function pandamium:utils/get/dimension_string_id/from_score
data modify storage pandamium:local functions."pandamium:impl/teleport/store_teleport/main".from_dimension_string_id set from storage pandamium:temp dimension_string_id

# feedback
function pandamium:utils/get/username
data modify storage pandamium:text input set from storage pandamium:templates teleport.source
function pandamium:utils/text/escape_double_quotes
function pandamium:utils/log {args:{message:["Teleported ",{storage:"pandamium:temp",nbt:"username"}," from [",{storage:"pandamium:templates",nbt:"teleport.from[0]"}," ",{storage:"pandamium:templates",nbt:"teleport.from[1]"}," ",{storage:"pandamium:templates",nbt:"teleport.from[2]"}," in ",{storage:"pandamium:local",nbt:'functions."pandamium:impl/teleport/store_teleport/main".from_dimension_string_id'},"] to [",{storage:"pandamium:templates",nbt:"teleport.to[0]"}," ",{storage:"pandamium:templates",nbt:"teleport.to[1]"}," ",{storage:"pandamium:templates",nbt:"teleport.to[2]"}," in ",{storage:"pandamium:local",nbt:'functions."pandamium:impl/teleport/store_teleport/main".to_dimension_string_id'},'] by "',{storage:"pandamium:text",nbt:"output"},'"']}}

# store in teleport history
execute store result storage pandamium:local functions."pandamium:impl/teleport/store_teleport/main".index int 1 run scoreboard players get @s db.players.index
function pandamium:impl/teleport/store_teleport/modify_entry with storage pandamium:local functions."pandamium:impl/teleport/store_teleport/main"

# remove source type
data remove storage pandamium:templates teleport.source
