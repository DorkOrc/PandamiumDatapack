execute on passengers run function pandamium:impl/kill_entity_stack_top_down

execute if entity @s[type=minecraft:player] run return run ride @s dismount
execute if entity @s[type=#pandamium:mobs] run return run function pandamium:utils/kill_mob_discretely
return run function pandamium:utils/kill_technical_entity_discretely
