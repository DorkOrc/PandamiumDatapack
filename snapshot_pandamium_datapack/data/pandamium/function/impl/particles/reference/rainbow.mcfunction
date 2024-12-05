# arguments: color_0, color_1, color_2

$execute if predicate pandamium:periodic_tick/5t run particle minecraft:entity_effect{color:[$(color_0)f,$(color_1)f,$(color_2)f,1f]} ~ ~ ~ 0 0 0 0.1 1
$particle minecraft:dust{color:[$(color_0)f,$(color_1)f,$(color_2)f],scale:0.5f} ~ ~1 ~ 0.3 0.4 0.3 0.5 1

schedule function pandamium:impl/particles/randomize_color 1t append
