execute if score <health_decimal> variable matches 0 run scoreboard players set <health_decimal> variable 1
scoreboard players operation <health_decimal> variable %= #100 constant
execute if score <health_decimal> variable matches 10..99 run data modify storage pandamium:temp attack_indicator.health_string set value '[{"nbt":"attack_indicator.int_health","storage":"pandamium:temp"},".",{"score":{"name":"<health_decimal>","objective":"variable"}}]'
execute if score <health_decimal> variable matches 0..9 run data modify storage pandamium:temp attack_indicator.health_string set value '[{"nbt":"attack_indicator.int_health","storage":"pandamium:temp"},".0",{"score":{"name":"<health_decimal>","objective":"variable"}}]'
