#{
#	action: "remove_warning_from_mini_block_with_warning_item_entities",
#}

execute if data storage pandamium:queue actions_ran."remove_warning_from_mini_block_with_warning_item_entities" run return 0

execute at @a[scores={just_dropped_mini_block_with_warning=1}] run item modify entity @e[type=item,distance=..10] contents pandamium:remove_warning_from_mini_block_with_warning

item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.0 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.1 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.2 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.3 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.4 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.5 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.6 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.7 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] hotbar.8 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.0 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.1 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.2 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.3 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.4 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.5 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.6 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.7 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.8 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.9 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.10 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.11 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.12 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.13 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.14 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.15 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.16 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.17 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.18 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.19 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.20 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.21 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.22 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.23 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.24 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.25 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] inventory.26 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] weapon.offhand pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] armor.head pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] player.cursor pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] player.crafting.0 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] player.crafting.1 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] player.crafting.2 pandamium:remove_warning_from_mini_block_with_warning
item modify entity @a[scores={just_dropped_mini_block_with_warning=1}] player.crafting.3 pandamium:remove_warning_from_mini_block_with_warning

scoreboard players reset @a[scores={just_dropped_mini_block_with_warning=1}] just_dropped_mini_block_with_warning
