# handle the items being unequipped, including throwing, selecting, and swapping
execute as @a[scores={transient_equippable.time_since_worn=0..1,transient_equippable.items_equipped=1..}] if items entity @s weapon.mainhand *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"weapon.mainhand"}
execute as @a[scores={transient_equippable.time_since_worn=0..1,transient_equippable.items_equipped=1..}] if items entity @s weapon.offhand *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"weapon.mainhand"}

execute as @a[scores={transient_equippable.time_since_worn=0..1}] run scoreboard players operation @s temp_1 = @s transient_equippable.items_equipped
execute as @a[scores={transient_equippable.time_since_worn=0..1}] store result score @s transient_equippable.items_equipped if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}]
execute as @a[scores={transient_equippable.time_since_worn=0..1,temp_1=1..}] if score @s transient_equippable.items_equipped < @s temp_1 run function pandamium:impl/transient_equippable/catch_edge_cases

scoreboard players set @a[scores={transient_equippable.items_equipped=1..}] transient_equippable.time_since_worn 0

# end if there are no players to apply the colour shifting to
execute unless entity @a[predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,limit=1] run return 0

# block obtain_transient_equippable_item advancement
scoreboard players set <transient_equippable.modifying> global 1

# initialise data for thus-far-unmodified items -- this stores the current dye colour if there, and removes the equipping sound to avoid spammed sound events
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.feet leather_boots[!custom_data~{pandamium:{transient_equippable:{}}}] in pandamium:staff_world run function pandamium:impl/transient_equippable/init_slot/feet
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.legs leather_leggings[!custom_data~{pandamium:{transient_equippable:{}}}] in pandamium:staff_world run function pandamium:impl/transient_equippable/init_slot/legs
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.chest leather_chestplate[!custom_data~{pandamium:{transient_equippable:{}}}] in pandamium:staff_world run function pandamium:impl/transient_equippable/init_slot/chest
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.head leather_helmet[!custom_data~{pandamium:{transient_equippable:{}}}] in pandamium:staff_world run function pandamium:impl/transient_equippable/init_slot/head

# modify the colours
execute if entity @a[scores={custom_dye.type=1},gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,predicate=!pandamium:sneaking,limit=1] run function pandamium:impl/transient_equippable/custom_dye_types/rainbow/main
execute as @a[scores={custom_dye.type=2},gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] run function pandamium:impl/transient_equippable/custom_dye_types/health/main
execute as @a[scores={custom_dye.type=3},gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] run function pandamium:impl/transient_equippable/custom_dye_types/biome/main
execute if entity @a[scores={custom_dye.type=4},gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,predicate=!pandamium:sneaking,limit=1] run function pandamium:impl/database/cache/macros/run_custom_dye.fixed with storage pandamium:cache macros."custom_dye.fixed"
execute if entity @a[scores={custom_dye.type=5},gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,predicate=!pandamium:sneaking,limit=1] run function pandamium:impl/database/cache/macros/run_custom_dye.gradient

# unblock obtain_transient_equippable_item advancement
scoreboard players reset <transient_equippable.modifying> global
