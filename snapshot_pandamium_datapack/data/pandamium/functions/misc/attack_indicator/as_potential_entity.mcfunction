# in pandamium:staff_world

# rounds Health to 2d.p., as [/data] always returns an integer
execute store result storage pandamium:temp attack_indicator.health float 0.01 run data get storage pandamium:temp nbt.Health 100
execute store result score <max_health> variable run attribute @s generic.max_health get

execute store result score <invulnerable> variable run data get storage pandamium:temp nbt.Invulnerable

item modify block 0 0 0 container.0 pandamium:attack_indicator/actionbar_text
data modify storage pandamium:temp attack_indicator.targets append from block 0 0 0 Items[0].tag.display.Name
