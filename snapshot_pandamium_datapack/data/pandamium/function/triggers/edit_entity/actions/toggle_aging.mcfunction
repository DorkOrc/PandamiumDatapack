execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob belongs to another player."}]

execute unless predicate pandamium:entity/is_baby run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob is already an adult."}]
execute unless data entity @s Age run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob does not age."}]

execute if predicate pandamium:entity/forced_baby run return run function pandamium:entity/force_baby/off
function pandamium:entity/force_baby/on
execute if predicate pandamium:entity/forced_baby run data modify entity @s data.forced_baby.by set from entity @a[limit=1,tag=edit_entity.player] UUID
