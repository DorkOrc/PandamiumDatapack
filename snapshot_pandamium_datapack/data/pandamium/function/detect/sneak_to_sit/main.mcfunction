# State 3 also means sneaking, but is used after a dismount due to MC-268008. So treat incoming changes from 3 as the same as from 1, for simplicity.

execute if score @s sneak_to_sit.sneaking_state matches 3 run scoreboard players set @s sneak_to_sit.sneaking_state 1
scoreboard players operation <previous_sneaking_state> variable = @s sneak_to_sit.sneaking_state

# update state
execute if score <previous_sneaking_state> variable matches 2 run scoreboard players set @s sneak_to_sit.sit_cancelled_time 0

execute store success score @s sneak_to_sit.sneaking_state if predicate pandamium:sneaking
execute if score <previous_sneaking_state> variable matches 2 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:true}}}} run scoreboard players set @s sneak_to_sit.sneaking_state 3
execute if score <previous_sneaking_state> variable matches 1 unless score @s sneak_to_sit.sit_cancelled_time matches 0..30 if score @s sneak_to_sit.time_since_sneaking_state_change matches 0..8 unless predicate pandamium:sneaking run scoreboard players set @s sneak_to_sit.sneaking_state 4
execute if score <previous_sneaking_state> variable matches 4 unless score @s sneak_to_sit.sit_cancelled_time matches 0..30 if score @s sneak_to_sit.time_since_sneaking_state_change matches 0..8 if predicate pandamium:sneaking run scoreboard players set @s sneak_to_sit.sneaking_state 5
execute if score <previous_sneaking_state> variable matches 5 unless score @s sneak_to_sit.sit_cancelled_time matches 0..30 if score @s sneak_to_sit.time_since_sneaking_state_change matches 0..8 unless predicate pandamium:sneaking run function pandamium:misc/sit

execute if predicate pandamium:riding_entity run scoreboard players set @s sneak_to_sit.sneaking_state 2
execute if score @s sneak_to_sit.sneaking_state matches 2 run scoreboard players set @s sneak_to_sit.sit_cancelled_time 0

#
scoreboard players set @s sneak_to_sit.time_since_sneaking_state_change 0
advancement revoke @s only pandamium:detect/sneak_to_sit
