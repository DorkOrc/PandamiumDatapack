# handle the items being unequipped, including throwing, selecting, and swapping
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor,scores={rainbow_armor.rainbow_items_equipped=1..}] if items entity @s weapon.mainhand *[custom_data~{pandamium:{rainbow:{}}}] in pandamium:staff_world run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor,scores={rainbow_armor.rainbow_items_equipped=1..}] if items entity @s weapon.offhand *[custom_data~{pandamium:{rainbow:{}}}] in pandamium:staff_world run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"weapon.mainhand"}
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor] run scoreboard players operation @s temp_1 = @s rainbow_armor.rainbow_items_equipped
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor] store result score @s rainbow_armor.rainbow_items_equipped if items entity @s armor.* *[custom_data~{pandamium:{rainbow:{}}}]
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor,scores={temp_1=1..}] if score @s rainbow_armor.rainbow_items_equipped < @s temp_1 unless items entity @s player.cursor *[custom_data~{pandamium:{rainbow:{}}}] at @s anchored eyes positioned ^ ^ ^ as @e[type=item,distance=..5] if items entity @s contents *[custom_data~{pandamium:{rainbow:{}}}] in pandamium:staff_world run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"container.0"}
execute as @a[predicate=pandamium:player/can_enable_rainbow_armor,scores={temp_1=1..}] if score @s rainbow_armor.rainbow_items_equipped < @s temp_1 if items entity @s player.cursor *[custom_data~{pandamium:{rainbow:{}}}] in pandamium:staff_world run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"player.cursor"}

# end if there are no players to apply the colour shifting to
execute unless entity @a[predicate=pandamium:player/enabled_rainbow_armor,predicate=pandamium:wearing_leather_player_armor,limit=1] run return 0

# calculate the next interpolated colour
scoreboard players add <rainbow_armor.interpolation> global 1
execute unless score <rainbow_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_armor.start_color.r> global = <rainbow_armor.end_color.r> global
execute unless score <rainbow_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_armor.start_color.g> global = <rainbow_armor.end_color.g> global
execute unless score <rainbow_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_armor.start_color.b> global = <rainbow_armor.end_color.b> global
execute unless score <rainbow_armor.interpolation> global matches 0..59 store result score <rainbow_armor.end_color.r> global run random value 0..255
execute unless score <rainbow_armor.interpolation> global matches 0..59 store result score <rainbow_armor.end_color.g> global run random value 0..255
execute unless score <rainbow_armor.interpolation> global matches 0..59 store result score <rainbow_armor.end_color.b> global run random value 0..255
execute unless score <rainbow_armor.interpolation> global matches 0..59 run scoreboard players set <rainbow_armor.interpolation> global 0

scoreboard players operation <rainbow_armor.color.r> variable = <rainbow_armor.end_color.r> global
scoreboard players operation <rainbow_armor.color.r> variable -= <rainbow_armor.start_color.r> global
scoreboard players operation <rainbow_armor.color.r> variable *= <rainbow_armor.interpolation> global
scoreboard players operation <rainbow_armor.color.r> variable /= #60 constant
scoreboard players operation <rainbow_armor.color.r> variable += <rainbow_armor.start_color.r> global

scoreboard players operation <rainbow_armor.color> variable = <rainbow_armor.color.r> variable

scoreboard players operation <rainbow_armor.color.g> variable = <rainbow_armor.end_color.g> global
scoreboard players operation <rainbow_armor.color.g> variable -= <rainbow_armor.start_color.g> global
scoreboard players operation <rainbow_armor.color.g> variable *= <rainbow_armor.interpolation> global
scoreboard players operation <rainbow_armor.color.g> variable /= #60 constant
scoreboard players operation <rainbow_armor.color.g> variable += <rainbow_armor.start_color.g> global

scoreboard players operation <rainbow_armor.color> variable *= #256 constant
scoreboard players operation <rainbow_armor.color> variable += <rainbow_armor.color.g> variable

scoreboard players operation <rainbow_armor.color.b> variable = <rainbow_armor.end_color.b> global
scoreboard players operation <rainbow_armor.color.b> variable -= <rainbow_armor.start_color.b> global
scoreboard players operation <rainbow_armor.color.b> variable *= <rainbow_armor.interpolation> global
scoreboard players operation <rainbow_armor.color.b> variable /= #60 constant
scoreboard players operation <rainbow_armor.color.b> variable += <rainbow_armor.start_color.b> global

scoreboard players operation <rainbow_armor.color> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:impl/rainbow_armor/modify_all".rgb int 1 run scoreboard players operation <rainbow_armor.color> variable += <rainbow_armor.color.b> variable

# apply the colour changes
function pandamium:impl/rainbow_armor/modify_all with storage pandamium:local functions."pandamium:impl/rainbow_armor/modify_all"
