execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob belongs to another player."}]

execute if entity @s[type=#pandamium:edit_entity/cannot_be_mounted] run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob cannot be mounted"}]
execute if predicate pandamium:entity/is_baby_or_tadpole run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! You cannot mount baby mobs."}]
execute if predicate pandamium:mob_is_angry run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! You cannot mount angry mobs."}]

tp @a[limit=1,tag=edit_entity.player] ~ ~ ~
ride @a[limit=1,tag=edit_entity.player] mount @s
