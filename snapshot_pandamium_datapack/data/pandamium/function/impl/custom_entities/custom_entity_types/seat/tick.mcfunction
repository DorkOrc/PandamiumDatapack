execute on passengers run scoreboard players set @s[type=minecraft:player,scores={sneak_to_sit_timer=-1073741819..-1}] sneak_to_sit_timer 536870912

execute if entity @s[tag=!pandamium.custom_entity.data.enforced_sit] on passengers if entity @s[type=minecraft:marker] run function pandamium:impl/custom_entities/custom_entity_types/seat/enforce_sit

execute on passengers if entity @s[type=minecraft:player] \
    unless predicate pandamium:player/input/any_movement_inputs \
    unless block ~ ~-0.001 ~ #pandamium:cannot_sit_on \
    if block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~ ~ #pandamium:cannot_sit_inside \
    anchored eyes \
    if block ^ ^ ^ #pandamium:mobs_cannot_suffocate_in \
    unless block ^ ^ ^ #pandamium:cannot_sit_inside \
        run return 0

execute on passengers run ride @s[type=minecraft:player] dismount
execute on passengers if entity @s[type=minecraft:marker] run function pandamium:impl/custom_entities/custom_entity_types/seat/fix_dismount_location

function pandamium:utils/kill_entity_stack_discretely
