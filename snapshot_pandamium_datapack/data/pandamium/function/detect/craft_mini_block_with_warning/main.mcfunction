execute unless score @s just_dropped_mini_block_with_warning matches 1 run data modify storage pandamium:queue entries append value {action:"remove_warning_from_mini_block_with_warning_item_entities"}
scoreboard players set @s just_dropped_mini_block_with_warning 1

advancement revoke @s only pandamium:detect/craft_mini_block_with_warning
