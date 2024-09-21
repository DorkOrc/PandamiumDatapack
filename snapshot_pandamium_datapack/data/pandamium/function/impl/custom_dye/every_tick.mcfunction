# handle the items being unequipped, including throwing, selecting, and swapping
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={custom_dye.custom_dyed_items_equipped=1..}] if items entity @s weapon.mainhand *[custom_data~{pandamium:{custom_dye:{}}}] run function pandamium:detect/obtain_custom_dyed_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={custom_dye.custom_dyed_items_equipped=1..}] if items entity @s weapon.offhand *[custom_data~{pandamium:{custom_dye:{}}}] run function pandamium:detect/obtain_custom_dyed_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_custom_dye] run scoreboard players operation @s temp_1 = @s custom_dye.custom_dyed_items_equipped
execute as @a[predicate=pandamium:player/can_enable_custom_dye] store result score @s custom_dye.custom_dyed_items_equipped if items entity @s armor.* *[custom_data~{pandamium:{custom_dye:{}}}]
execute as @a[predicate=pandamium:player/can_enable_custom_dye,scores={temp_1=1..}] if score @s custom_dye.custom_dyed_items_equipped < @s temp_1 run function pandamium:impl/custom_dye/catch_edge_cases

# end if there are no players to apply the colour shifting to
execute unless entity @a[predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor,limit=1] run return 0

# calculate the next interpolated colour
scoreboard players add <custom_dye.interpolation> global 1
execute unless score <custom_dye.interpolation> global matches 0..59 run scoreboard players operation <custom_dye.start_color.r> global = <custom_dye.end_color.r> global
execute unless score <custom_dye.interpolation> global matches 0..59 run scoreboard players operation <custom_dye.start_color.g> global = <custom_dye.end_color.g> global
execute unless score <custom_dye.interpolation> global matches 0..59 run scoreboard players operation <custom_dye.start_color.b> global = <custom_dye.end_color.b> global
execute unless score <custom_dye.interpolation> global matches 0..59 store result score <custom_dye.end_color.r> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..59 store result score <custom_dye.end_color.g> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..59 store result score <custom_dye.end_color.b> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..59 run scoreboard players set <custom_dye.interpolation> global 0

scoreboard players operation <custom_dye.color.r> variable = <custom_dye.end_color.r> global
scoreboard players operation <custom_dye.color.r> variable -= <custom_dye.start_color.r> global
scoreboard players operation <custom_dye.color.r> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.r> variable /= #60 constant
scoreboard players operation <custom_dye.color.r> variable += <custom_dye.start_color.r> global

scoreboard players operation <custom_dye.color> variable = <custom_dye.color.r> variable

scoreboard players operation <custom_dye.color.g> variable = <custom_dye.end_color.g> global
scoreboard players operation <custom_dye.color.g> variable -= <custom_dye.start_color.g> global
scoreboard players operation <custom_dye.color.g> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.g> variable /= #60 constant
scoreboard players operation <custom_dye.color.g> variable += <custom_dye.start_color.g> global

scoreboard players operation <custom_dye.color> variable *= #256 constant
scoreboard players operation <custom_dye.color> variable += <custom_dye.color.g> variable

scoreboard players operation <custom_dye.color.b> variable = <custom_dye.end_color.b> global
scoreboard players operation <custom_dye.color.b> variable -= <custom_dye.start_color.b> global
scoreboard players operation <custom_dye.color.b> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.b> variable /= #60 constant
scoreboard players operation <custom_dye.color.b> variable += <custom_dye.start_color.b> global

scoreboard players operation <custom_dye.color> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:impl/custom_dye/modify_all".rgb int 1 run scoreboard players operation <custom_dye.color> variable += <custom_dye.color.b> variable

# apply the colour changes
function pandamium:impl/custom_dye/modify_all with storage pandamium:local functions."pandamium:impl/custom_dye/modify_all"
