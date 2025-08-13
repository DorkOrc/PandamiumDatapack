loot replace entity @s container.0 loot pandamium:utility/special_characters
data modify storage pandamium:dictionary special_characters set from entity @s item.components."minecraft:custom_data".special_characters
data modify storage pandamium:dictionary surrogate_pairs set from entity @s item.components."minecraft:custom_data".surrogate_pairs
kill @s
