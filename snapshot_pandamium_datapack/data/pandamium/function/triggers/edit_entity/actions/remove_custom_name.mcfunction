execute if predicate pandamium:entity/custom_name/forced run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob's name is locked."}]
execute unless predicate pandamium:entity/has_custom_name run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob is already nameless."}]

data remove entity @s CustomName
scoreboard players set @s custom_name 0
