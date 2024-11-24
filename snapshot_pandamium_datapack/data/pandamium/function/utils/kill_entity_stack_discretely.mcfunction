execute unless entity @s run return 0
execute on vehicle run return run function pandamium:utils/kill_entity_stack_discretely
function pandamium:impl/kill_entity_stack_top_down
return 1
