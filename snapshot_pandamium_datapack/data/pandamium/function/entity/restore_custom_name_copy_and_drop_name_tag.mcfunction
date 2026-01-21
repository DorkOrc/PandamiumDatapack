data modify storage pandamium:local functions."pandamium:entity/restore_custom_name_copy_and_drop_name_tag" set value {}
execute if predicate pandamium:entity/has_custom_name run data modify storage pandamium:local functions."pandamium:entity/restore_custom_name_copy_and_drop_name_tag".name set from entity @s CustomName
function pandamium:entity/restore_custom_name_copy
scoreboard players set <different> variable 1
execute unless predicate pandamium:entity/has_custom_name unless data storage pandamium:local functions."pandamium:entity/restore_custom_name_copy_and_drop_name_tag".name run scoreboard players set <different> variable 0
execute if predicate pandamium:entity/has_custom_name store success score <different> variable run data modify storage pandamium:local functions."pandamium:entity/restore_custom_name_copy_and_drop_name_tag".name set from entity @s CustomName
execute if score <different> variable matches 1 at @s run loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:name_tag"}]}]}
