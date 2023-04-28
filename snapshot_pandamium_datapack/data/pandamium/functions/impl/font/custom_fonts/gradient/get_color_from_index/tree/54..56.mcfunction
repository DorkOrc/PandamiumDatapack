execute if score <color_index> variable matches 54 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#009FFF"}]'
execute if score <color_index> variable matches 55..56 run function pandamium:impl/font/custom_fonts/gradient/get_color_from_index/tree/55..56
