execute if score <color_index> variable matches 84 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF00BF"}]'
execute if score <color_index> variable matches 85..86 run function pandamium:impl/font/custom_fonts/gradient/get_color_from_index/tree/85..86
