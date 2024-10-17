execute unless score @s just_dropped_dyed_bedrock_breaker matches 1 run data modify storage pandamium:queue entries append value {action:"fix_thrown_bedrock_breaker_item_entities"}
scoreboard players set @s just_dropped_dyed_bedrock_breaker 1

advancement revoke @s only pandamium:detect/repair_bedrock_breaker
