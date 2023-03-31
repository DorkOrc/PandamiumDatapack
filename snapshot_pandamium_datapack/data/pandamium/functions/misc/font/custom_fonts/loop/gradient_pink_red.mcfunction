scoreboard players operation <colour_index> variable = <n> variable
scoreboard players operation <colour_index> variable *= <max_colour_index> variable
scoreboard players operation <colour_index> variable /= <max_character_index> variable

execute if score <colour_index> variable matches 0 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF00C5"}]'
execute if score <colour_index> variable matches 1 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF00B5"}]'
execute if score <colour_index> variable matches 2 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF00A5"}]'
execute if score <colour_index> variable matches 3 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0095"}]'
execute if score <colour_index> variable matches 4 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0085"}]'
execute if score <colour_index> variable matches 5 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0074"}]'
execute if score <colour_index> variable matches 6 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0064"}]'
execute if score <colour_index> variable matches 7 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0054"}]'
execute if score <colour_index> variable matches 8 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0044"}]'
execute if score <colour_index> variable matches 9 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF0034"}]'

data remove storage pandamium:temp characters[0]
scoreboard players add <n> variable 1
execute if data storage pandamium:temp characters[0] run function pandamium:misc/font/custom_fonts/loop/gradient_pink_red
