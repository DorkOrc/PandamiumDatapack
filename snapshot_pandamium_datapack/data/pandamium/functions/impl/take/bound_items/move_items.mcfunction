# run IN pandamium:staff_world

# Move Items
execute if score <feet_slot_bound> variable matches 1 run item replace block ~ ~ ~ container.10 from entity @s armor.feet
execute if score <feet_slot_bound> variable matches 1 run item replace entity @s armor.feet with air

execute if score <legs_slot_bound> variable matches 1 run item replace block ~ ~ ~ container.12 from entity @s armor.legs
execute if score <legs_slot_bound> variable matches 1 run item replace entity @s armor.legs with air

execute if score <chest_slot_bound> variable matches 1 run item replace block ~ ~ ~ container.14 from entity @s armor.chest
execute if score <chest_slot_bound> variable matches 1 run item replace entity @s armor.chest with air

execute if score <head_slot_bound> variable matches 1 run item replace block ~ ~ ~ container.16 from entity @s armor.head
execute if score <head_slot_bound> variable matches 1 run item replace entity @s armor.head with air

# Name Chest
function pandamium:misc/get_username
data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"username","storage":"pandamium:temp"},"\'s Bound Items"]'
data modify block ~ ~ ~ CustomName set from block 3 0 0 front_text.messages[0]
