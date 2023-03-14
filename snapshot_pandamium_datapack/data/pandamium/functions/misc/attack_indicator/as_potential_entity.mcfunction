# in pandamium:staff_world

# rounds Health to 2d.p., as [/data] always returns an integer
execute store result storage pandamium:temp attack_indicator.health float 0.01 run data get storage pandamium:temp nbt.Health 100
execute store result score <max_health> variable run attribute @s generic.max_health get

execute store result score <invulnerable> variable run data get storage pandamium:temp nbt.Invulnerable
execute store result score <fire> variable run data get storage pandamium:temp nbt.Fire

data modify storage pandamium:temp attack_indicator.prefixes set value []
execute on target if entity @s[tag=player] run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"⚠","color":"#FF0000"}'
execute if score <fire> variable matches 1.. run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"🔥","color":"#FF5000"}'
execute if predicate pandamium:attack_indicator/is_invulnerable run data modify storage pandamium:temp attack_indicator.prefixes append value '{"text":"🛡","color":"#3175E8"}'

item modify block 0 0 0 container.0 pandamium:attack_indicator/actionbar_text
data modify storage pandamium:temp attack_indicator.targets append from block 0 0 0 Items[0].tag.display.Name
