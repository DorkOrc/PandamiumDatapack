# arguments: color

$execute if predicate pandamium:periodic_tick/5t run particle minecraft:entity_effect{color:$(color)} ~ ~ ~ 0 0 0 0.1 1
$particle minecraft:dust{color:$(color),scale:0.5f} ~ ~1 ~ 0.3 0.4 0.3 0.5 1

schedule function pandamium:impl/particles/randomize_color 1t append
