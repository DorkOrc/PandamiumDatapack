data modify entity @s ExplosionRadius set value 3b
tag @s remove pandamium.defused

execute on passengers run kill @s[type=marker,tag=pandamium.custom_entity.type.defused_creeper,tag=pandamium.custom_entity.brain]
