# arguments: rgb

# block obtain_custom_dyed_item advancement
scoreboard players set <custom_dye.modifying> global 1

# initialise data for thus-far-unmodified items -- this stores the current dye colour if there, and removes the equipping sound to avoid spammed sound events
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.feet leather_boots[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/feet
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.legs leather_leggings[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/legs
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.chest leather_chestplate[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/chest
execute as @a[predicate=pandamium:player/enabled_custom_dye] if items entity @s armor.head leather_helmet[!custom_data~{pandamium:{custom_dye:{}}}] in pandamium:staff_world run function pandamium:impl/custom_dye/init_slot/head

# modify the colours
$item modify entity @a[predicate=pandamium:player/enabled_custom_dye] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{custom_dye:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(rgb)}}}}
$item modify entity @a[predicate=pandamium:player/enabled_custom_dye] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{custom_dye:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(rgb)}}}}
$item modify entity @a[predicate=pandamium:player/enabled_custom_dye] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{custom_dye:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(rgb)}}}}
$item modify entity @a[predicate=pandamium:player/enabled_custom_dye] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{custom_dye:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(rgb)}}}}

# unblock obtain_custom_dyed_item advancement
scoreboard players reset <custom_dye.modifying> global
