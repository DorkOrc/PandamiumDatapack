execute if score <color_index> variable matches 93 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp","color":"#FF002F"}]'
execute if score <color_index> variable matches 94..95 run function pandamium:impl/font/custom_fonts/gradient/get_color_from_index/tree/94..95
