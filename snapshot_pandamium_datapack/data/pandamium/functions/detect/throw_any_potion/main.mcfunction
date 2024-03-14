execute if predicate pandamium:in_spawn anchored eyes as @e[type=potion,distance=..4,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:3694022}

scoreboard players reset @s detect.use.splash_potion
scoreboard players reset @s detect.use.lingering_potion
advancement revoke @s only pandamium:detect/throw_any_potion
