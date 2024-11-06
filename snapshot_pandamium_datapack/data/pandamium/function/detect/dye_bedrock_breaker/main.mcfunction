execute unless score @s just_dropped_bedrock_breaker matches 1 run data modify storage pandamium:queue entries append value {action:"fix_thrown_bedrock_breaker_item_entities"}
scoreboard players set @s just_dropped_bedrock_breaker 1

item modify entity @s weapon.mainhand pandamium:fix_bedrock_breaker

advancement revoke @s only pandamium:detect/dye_bedrock_breaker
