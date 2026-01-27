execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob belongs to another player."}]

execute if predicate pandamium:entity/custom_name/forced run return run data remove entity @s data.forced_custom_name
execute unless predicate pandamium:entity/custom_name/forced if predicate pandamium:entity/has_custom_name run return run data modify entity @s data.forced_custom_name set value {}
