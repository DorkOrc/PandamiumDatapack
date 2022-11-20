data modify entity @s ArmorItems[0] set from storage pandamium:temp item_clear.nbt.Item
execute unless predicate pandamium:item_clear/valuable_on_feet store success score <non_valuable> variable run scoreboard players add <total> variable 1
