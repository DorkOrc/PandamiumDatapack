# handle the items being unequipped, including throwing, selecting, and swapping
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={custom_dye.custom_dyed_items_equipped=1..}] if items entity @s weapon.mainhand *[custom_data~{pandamium:{custom_dye:{}}}] run function pandamium:detect/obtain_custom_dyed_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={custom_dye.custom_dyed_items_equipped=1..}] if items entity @s weapon.offhand *[custom_data~{pandamium:{custom_dye:{}}}] run function pandamium:detect/obtain_custom_dyed_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_custom_dye] run scoreboard players operation @s temp_1 = @s custom_dye.custom_dyed_items_equipped
execute as @a[predicate=pandamium:player/can_enable_custom_dye] store result score @s custom_dye.custom_dyed_items_equipped if items entity @s armor.* *[custom_data~{pandamium:{custom_dye:{}}}]
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={temp_1=1..}] if score @s custom_dye.custom_dyed_items_equipped < @s temp_1 run function pandamium:impl/custom_dye/catch_edge_cases

# end if there are no players to apply the colour shifting to
execute unless entity @a[predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,limit=1] run return 0

# block obtain_custom_dyed_item advancement
scoreboard players set <custom_dye.modifying> global 1

# initialise data for thus-far-unmodified items -- this stores the current dye colour if there, and removes the equipping sound to avoid spammed sound events
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.feet leather_boots[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/feet
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.legs leather_leggings[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/legs
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.chest leather_chestplate[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/chest
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.head leather_helmet[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/head

# modify the colours
execute if entity @a[scores={custom_dye.type=1},predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,limit=1] run function pandamium:impl/custom_dye/types/rainbow/main
execute as @a[scores={custom_dye.type=2},predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] run function pandamium:impl/custom_dye/types/health/main

# unblock obtain_custom_dyed_item advancement
scoreboard players reset <custom_dye.modifying> global
