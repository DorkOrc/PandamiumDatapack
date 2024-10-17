#{
#	action: "fix_thrown_bedrock_breaker_item_entities",
#}

execute if data storage pandamium:queue actions_ran."fix_thrown_bedrock_breaker_item_entities" run return 0

execute at @a[scores={just_dropped_dyed_bedrock_breaker=1}] run item modify entity @e[type=item,distance=..10] contents pandamium:fix_bedrock_breaker

item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.0 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.1 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.2 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.3 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.4 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.5 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.6 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.7 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] hotbar.8 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.0 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.1 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.2 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.3 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.4 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.5 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.6 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.7 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.8 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.9 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.10 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.11 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.12 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.13 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.14 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.15 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.16 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.17 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.18 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.19 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.20 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.21 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.22 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.23 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.24 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.25 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] inventory.26 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] weapon.offhand pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] armor.head pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] player.cursor pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] player.crafting.0 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] player.crafting.1 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] player.crafting.2 pandamium:fix_bedrock_breaker
item modify entity @a[scores={just_dropped_dyed_bedrock_breaker=1}] player.crafting.3 pandamium:fix_bedrock_breaker

scoreboard players reset @a[scores={just_dropped_dyed_bedrock_breaker=1}] just_dropped_dyed_bedrock_breaker
