scoreboard players operation <colour_index> variable = <n> variable
scoreboard players operation <colour_index> variable *= <max_colour_index> variable
scoreboard players operation <colour_index> variable /= <max_character_index> variable

execute if score <colour_index> variable matches 0 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0000"}'
execute if score <colour_index> variable matches 1 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF6600"}'
execute if score <colour_index> variable matches 2 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FFCC00"}'
execute if score <colour_index> variable matches 3 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#CCFF00"}'
execute if score <colour_index> variable matches 4 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#66FF00"}'
execute if score <colour_index> variable matches 5 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#00FF00"}'
execute if score <colour_index> variable matches 6 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#00FF66"}'
execute if score <colour_index> variable matches 7 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#00FFCC"}'
execute if score <colour_index> variable matches 8 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#00CCFF"}'
execute if score <colour_index> variable matches 9 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#0066FF"}'
execute if score <colour_index> variable matches 10 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#0000FF"}'
execute if score <colour_index> variable matches 11 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#6600FF"}'
execute if score <colour_index> variable matches 12 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#CC00FF"}'
execute if score <colour_index> variable matches 13 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF00CC"}'
execute if score <colour_index> variable matches 14 run data modify block 0 0 0 Text1 set value '{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0066"}'

data modify storage pandamium:temp coloured_characters append from block 0 0 0 Text1

data remove storage pandamium:temp characters[0]
scoreboard players add <n> variable 1
execute if data storage pandamium:temp characters[0] run function pandamium:misc/font/custom_fonts/loop/rainbow
