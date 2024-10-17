# from pandamium:bedrock_breaker enchantment hit_block effect

playsound minecraft:entity.zombie.attack_iron_door block @s ~ ~ ~ 0.25 0.5
particle minecraft:block_crumble{block_state:{Name:"minecraft:bedrock"}} ~ ~ ~ 0.5 0.5 0.5 1 10


execute if predicate pandamium:in_bottom_bedrock_layer run particle minecraft:block_marker{block_state:{Name:"minecraft:bedrock"}} ~ ~-0.001 ~
execute if predicate pandamium:in_bottom_bedrock_layer run particle minecraft:block_marker{block_state:{Name:"minecraft:barrier"}} ~ ~ ~
execute if predicate pandamium:in_bottom_bedrock_layer run return run setblock ~ ~ ~ barrier destroy

setblock ~ ~ ~ air destroy
