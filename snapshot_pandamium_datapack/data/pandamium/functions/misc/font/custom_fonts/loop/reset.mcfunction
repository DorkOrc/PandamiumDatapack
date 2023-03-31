data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"pandamium:temp"}]'

data remove storage pandamium:temp characters[0]
execute if data storage pandamium:temp characters[0] run function pandamium:misc/font/custom_fonts/loop/reset
