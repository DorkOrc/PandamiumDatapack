scoreboard players set <dropped_items> variable 1

# remove all items with the curse of vanishing.
clear @s *[enchantments~[{enchantments:"minecraft:vanishing_curse"}]]

# fix transient_equippable items
scoreboard players set <transient_equippable.modifying> global 1
execute if items entity @s armor.feet *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.feet"}
execute if items entity @s armor.legs *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.legs"}
execute if items entity @s armor.chest *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.chest"}
execute if items entity @s armor.head *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.head"}
scoreboard players set <transient_equippable.modifying> global 0

# drop all non-enderchest items
loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:[\
    {type:"minecraft:slot_range",source:"this",slots:"container.*"},\
    {type:"minecraft:slot_range",source:"this",slots:"armor.*"},\
    {type:"minecraft:slot_range",source:"this",slots:"weapon.offhand"},\
    {type:"minecraft:slot_range",source:"this",slots:"player.cursor"},\
    {type:"minecraft:slot_range",source:"this",slots:"player.crafting.*"},\
    {type:"minecraft:slot_range",source:"this",slots:"saddle"},\
]}]}]}

# increase the items' horizontal motion to roughly match that of items dropped from an actual player death, and increase the PickupDelay to match it exactly.
execute as @e[type=item,distance=..0.01] run function pandamium:impl/drop_inventory/modify_item_entity

# clear the player's inventory.
clear @s

# reset the player's XP and spawn experience orbs
execute store result score <value> variable run xp query @s levels
scoreboard players operation <value> variable *= #7 constant
execute if score <value> variable matches 101.. run scoreboard players set <value> variable 100
xp set @s 0 levels
xp set @s 0 points
function pandamium:impl/drop_inventory/spawn_experience_orbs/loop
