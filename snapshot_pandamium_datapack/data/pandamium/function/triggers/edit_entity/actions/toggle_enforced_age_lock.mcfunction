execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob belongs to another player."}]
execute if score <belongs_to_me> variable matches 0 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! You are not the owner of this mob."}]
execute if entity @s[type=#pandamium:bucketable] run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! Cannot do this for bucketable entities."}]
execute unless predicate pandamium:entity/is_baby_mob run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob is not a baby."}]
execute unless data entity @s {AgeLocked:true} run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob's age is not locked."}]

data modify storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt set from entity @s {}

execute if predicate pandamium:entity/is_forced_baby run data modify storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data set value {}
execute if predicate pandamium:entity/is_forced_baby store result score <age> variable run data get storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt.data.forced_baby.age
execute if predicate pandamium:entity/is_forced_baby unless score <age> variable matches -24000..-1 run scoreboard players set <age> variable -24000
execute if predicate pandamium:entity/is_forced_baby store result storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.Age int 1 run scoreboard players get <age> variable
execute if predicate pandamium:entity/is_forced_baby store result score <forced_age> variable run data get storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt.data.forced_baby.forced_age
execute if predicate pandamium:entity/is_forced_baby unless score <forced_age> variable matches 1.. run scoreboard players set <forced_age> variable 0
execute if predicate pandamium:entity/is_forced_baby store result storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.ForcedAge int 1 run scoreboard players get <forced_age> variable
execute if predicate pandamium:entity/is_forced_baby store result score <age_locked> variable run data get storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt.data.forced_baby.age_locked
execute if predicate pandamium:entity/is_forced_baby store success storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.AgeLocked byte 1 if score <age_locked> variable matches 1
execute if predicate pandamium:entity/is_forced_baby run data modify entity @s {} merge from storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data
execute if predicate pandamium:entity/is_forced_baby run return run data remove entity @s data.forced_baby

execute unless predicate pandamium:entity/is_forced_baby run data modify storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data set value {Age:-2147483648,ForcedAge:0,AgeLocked:true,data:{forced_baby:{}}}
execute unless predicate pandamium:entity/is_forced_baby store result score <age> variable run data get storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt.Age
execute unless predicate pandamium:entity/is_forced_baby if score <age> variable matches ..-32769 run scoreboard players set <age> variable -32768
execute unless predicate pandamium:entity/is_forced_baby if score <age> variable matches ..-1 unless score <age> variable matches -24000 store result storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.data.forced_baby.age short 1 run scoreboard players get <age> variable
execute unless predicate pandamium:entity/is_forced_baby store result score <forced_age> variable run data get storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt.ForcedAge
execute unless predicate pandamium:entity/is_forced_baby if score <forced_age> variable matches 32768.. run scoreboard players set <forced_age> variable 32767
execute unless predicate pandamium:entity/is_forced_baby if score <forced_age> variable matches 1.. store result storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.data.forced_baby.forced_age short 1 run scoreboard players get <forced_age> variable
execute unless predicate pandamium:entity/is_forced_baby if data storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".nbt{AgeLocked:true} run data modify storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data.data.forced_baby.age_locked set value true
execute unless predicate pandamium:entity/is_forced_baby run return run data modify entity @s {} merge from storage pandamium:local functions."pandamium:triggers/edit_entity/actions/toggle_enforced_age_lock".entity_data
