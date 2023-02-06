scoreboard players set <hit> variable 0
execute on attacker if entity @s[tag=player] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 1 run data modify storage pandamium:temp nbt set from entity @s
execute if score <hit> variable matches 1 if data storage pandamium:temp nbt{HurtTime:10s} in pandamium:staff_world run function pandamium:misc/attack_indicator/as_potential_entity
