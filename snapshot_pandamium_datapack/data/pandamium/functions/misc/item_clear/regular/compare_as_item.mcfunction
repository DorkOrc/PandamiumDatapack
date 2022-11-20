data modify storage pandamium:temp item_clear.nbt set from entity @s
execute store result score <age> variable run data get storage pandamium:temp item_clear.nbt.Age
execute unless score <age> variable matches ..1200 run function pandamium:misc/item_clear/regular/try_kill
