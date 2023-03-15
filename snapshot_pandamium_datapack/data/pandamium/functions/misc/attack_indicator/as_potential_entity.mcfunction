# in pandamium:staff_world

# Max Health
execute store result score <max_health> variable run attribute @s generic.max_health get

# Health
execute store result score <scaled_health> variable store result storage pandamium:temp attack_indicator.scaled_health_base int 0.01 run data get storage pandamium:temp nbt.Health 100
execute store result score <scaled_health_base> variable run data get storage pandamium:temp attack_indicator.scaled_health_base 100
scoreboard players operation <scaled_health> variable -= <scaled_health_base> variable
execute if score <scaled_health> variable matches 10..99 run data modify storage pandamium:temp attack_indicator.health_string set value '["",{"nbt":"attack_indicator.scaled_health_base","storage":"pandamium:temp"},".",{"score":{"name":"<scaled_health>","objective":"variable"}}]'
execute if score <scaled_health> variable matches 0..9 run data modify storage pandamium:temp attack_indicator.health_string set value '["",{"nbt":"attack_indicator.scaled_health_base","storage":"pandamium:temp"},".0",{"score":{"name":"<scaled_health>","objective":"variable"}}]'

# Absorption
data modify storage pandamium:temp attack_indicator.absorption_string set value '""'
execute store result score <absorption_amount> variable run data get storage pandamium:temp nbt.AbsorptionAmount
execute if score <absorption_amount> variable matches 1.. run data modify storage pandamium:temp attack_indicator.absorption_string set value '[{"text":"+","color":"#D4AF37"},{"score":{"name":"<absorption_amount>","objective":"variable"}}]'

# Prefixes
execute store result score <fire> variable run data get storage pandamium:temp nbt.Fire
execute store result score <invulnerable> variable run data get storage pandamium:temp nbt.Invulnerable

data modify storage pandamium:temp attack_indicator.prefixes set value []
execute on target if entity @s[tag=player] run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"⚠","color":"#FF0000"}'
execute if score <fire> variable matches 1.. run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"🔥","color":"#FF5000"}'
execute if predicate pandamium:attack_indicator/is_invulnerable run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"🛡","color":"#3175E8"}'

# Run
item modify block 0 0 0 container.0 pandamium:attack_indicator/actionbar_text
data modify storage pandamium:temp attack_indicator.targets append from block 0 0 0 Items[0].tag.display.Name
