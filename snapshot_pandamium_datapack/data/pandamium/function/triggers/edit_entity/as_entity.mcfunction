scoreboard players set <entity_loaded> variable 1
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.4 0.3 0 10
execute at @s anchored eyes run particle minecraft:happy_villager ^ ^ ^ 0.3 0.4 0.3 0 10

execute if entity @s[predicate=pandamium:in_spawn] run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}

# ownership
execute store success score <has_owner> variable store success score <belongs_to_another_player> variable if data entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 on owner if entity @s[tag=edit_entity.player] run scoreboard players set <belongs_to_another_player> variable 0
execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}

# toggle sounds
execute if score <operation> variable matches 1 if entity @s[type=#pandamium:edit_entity/cannot_be_silenced] run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 1 run return run execute store success entity @s Silent byte 1 unless data entity @s {Silent:1b}

# pause/unpause aging
execute if score <operation> variable matches 2 unless predicate pandamium:entity/is_baby run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 2 unless data entity @s Age run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 2 unless predicate pandamium:entity/forced_baby run return run function pandamium:entity/force_baby/on
execute if score <operation> variable matches 2 if predicate pandamium:entity/forced_baby run return run function pandamium:entity/force_baby/off

# rename
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 0 run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 1.. if predicate pandamium:entity/custom_name/forced run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot rename this mob"}
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 1.. if predicate pandamium:entity/custom_name/forced run return run scoreboard players set <use_name_tag> variable 0
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 1.. at @s if predicate pandamium:in_spawn run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot rename this mob"}
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 1.. at @s if predicate pandamium:in_spawn run return run scoreboard players set <use_name_tag> variable 0
execute if score <operation> variable matches 3 if score <use_name_tag> variable matches 1.. unless predicate pandamium:entity/custom_name/forced run return run function pandamium:triggers/edit_entity/set_name

# mount
execute if score <operation> variable matches 4 if entity @s[type=#pandamium:edit_entity/cannot_be_mounted] run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 4 if predicate pandamium:entity/is_baby run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot mount a baby mob"}
execute if score <operation> variable matches 4 if predicate pandamium:mob_is_angry run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot mount an angry mob"}
execute if score <operation> variable matches 4 run tp @a[limit=1,tag=edit_entity.player] ~ ~ ~
execute if score <operation> variable matches 4 run return run ride @a[limit=1,tag=edit_entity.player] mount @s

# remove name
execute if score <operation> variable matches 5 unless predicate pandamium:entity/has_custom_name run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 5 if predicate pandamium:entity/custom_name/forced run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot rename this mob"}
execute if score <operation> variable matches 5 if entity @s[predicate=pandamium:in_spawn] run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Cannot rename this mob"}
execute if score <operation> variable matches 5 unless predicate pandamium:entity/custom_name/forced run return run function pandamium:triggers/edit_entity/remove_name

# toggle forced name
execute if score <operation> variable matches 6 if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] {color:"red",text:"Invalid operation"}
execute if score <operation> variable matches 6 if predicate pandamium:entity/custom_name/forced run return run data remove entity @s data.forced_custom_name
execute if score <operation> variable matches 6 unless predicate pandamium:entity/custom_name/forced if predicate pandamium:entity/has_custom_name run return run data modify entity @s data.forced_custom_name set value {}
