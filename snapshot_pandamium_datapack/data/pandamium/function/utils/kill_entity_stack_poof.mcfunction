execute unless entity @s run return 0
execute on vehicle run return run function pandamium:utils/kill_entity_stack_poof
execute at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5
function pandamium:impl/kill_entity_stack_top_down
return 1
