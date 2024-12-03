# arguments: username, color_0, color_1, color_2, color_3

# check if entry exists
$execute if data storage pandamium:cache macros."custom_dye.fixed".entries[{id:"$(username)-custom_dye.fixed"}] run function pandamium:impl/database/cache/modify/remove_custom_dye.fixed_entry/main {username:"$(username)"}

# init
$data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_custom_dye.fixed_entry/*".entry set value \
{\
    username:"$(username)",id:"$(username)-custom_dye.fixed",\
    commands: [\
        'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.feet {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_0)}}}}',\
        'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.legs {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_1)}}}}',\
        'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.chest {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_2)}}}}',\
        'execute as $(username) run item modify entity @s[gamemode=!spectator,predicate=pandamium:player/enabled_custom_dye,predicate=pandamium:wearing_leather_player_armor] armor.head {function:"minecraft:filtered",item_filter:{predicates:{"minecraft:custom_data":{pandamium:{transient_equippable:{}}}}},modifier:{function:"minecraft:set_components",components:{"minecraft:dyed_color":{rgb:$(color_3)}}}}'\
    ]\
}

# append
data modify storage pandamium:cache macros."custom_dye.fixed".entries append from storage pandamium:local functions."pandamium:impl/database/cache/modify/add_custom_dye.fixed_entry/*".entry
execute store result score <index> variable if data storage pandamium:cache macros."custom_dye.fixed".entries[]
execute store result storage pandamium:cache macros."custom_dye.fixed".entries[-1].index int 1 run scoreboard players remove <index> variable 1

function pandamium:impl/database/cache/modify/add_custom_dye.fixed_entry/set_lines with storage pandamium:cache macros."custom_dye.fixed".entries[-1]

# update macros."custom_dye.fixed".upper_bound
execute store result score <total_entries> variable store result score <offset> variable if data storage pandamium:cache macros."custom_dye.fixed".entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium:cache macros."custom_dye.fixed".upper_bound int 1 run scoreboard players operation <total_entries> variable -= <offset> variable
