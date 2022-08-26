data modify entity @s ArmorItems[0] set from storage pandamium:temp NBT.Item
execute if predicate pandamium:wearing_valuable_in_feet_slot run scoreboard players set <valuable> variable 1
