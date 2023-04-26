# in pandamium:staff_world

# Max Health
execute store result score <max_health> variable run attribute @s generic.max_health get

# Health
execute store result score <health_decimal> variable store result storage pandamium:temp attack_indicator.int_health int 0.01 run data get storage pandamium:temp nbt.Health 100
execute if score <health_decimal> variable matches 100.. run data modify storage pandamium:temp attack_indicator.health_string set string storage pandamium:temp attack_indicator.int_health
execute if score <health_decimal> variable matches 0..99 run function pandamium:impl/attack_indicator/generate_actionbar/low_health

# Absorption
data modify storage pandamium:temp attack_indicator.absorption_string set value '""'
execute if data storage pandamium:temp nbt.AbsorptionAmount run function pandamium:impl/attack_indicator/generate_actionbar/absorption

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
