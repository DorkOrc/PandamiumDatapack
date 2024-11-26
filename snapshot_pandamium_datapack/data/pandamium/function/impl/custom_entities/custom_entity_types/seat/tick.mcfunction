execute on passengers run scoreboard players set @s[type=minecraft:player,scores={sneak_to_sit_timer=-1073741819..-1}] sneak_to_sit_timer 536870912

execute on passengers if entity @s[type=minecraft:player] \
    unless block ~ ~-0.01 ~ #pandamium:cannot_sit_on \
    if block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in \
    anchored eyes if block ^ ^ ^ #pandamium:mobs_cannot_suffocate_in \
        run return 0

execute on passengers run ride @s[type=!minecraft:marker] dismount
function pandamium:utils/kill_entity_stack_discretely
