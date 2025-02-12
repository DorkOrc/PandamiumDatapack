scoreboard players set <hit> variable 0
execute on attacker if entity @s[tag=player] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/attack_indicator/*".entity_data set from entity @s {}
execute if score <hit> variable matches 1 if data storage pandamium:local functions."pandamium:impl/attack_indicator/*".entity_data{HurtTime:10s} in pandamium:staff_world run function pandamium:impl/attack_indicator/as_potential_entity
