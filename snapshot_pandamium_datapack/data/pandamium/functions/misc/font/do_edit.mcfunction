# run IN pandamium:staff_world

scoreboard players set <valid_option> variable 0

# Styles/Attributes (Enable)
execute if score <font> variable matches 1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"bold":true}'
execute if score <font> variable matches 2 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"italic":true}'
execute if score <font> variable matches 3 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"underlined":true}'
execute if score <font> variable matches 4 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"strikethrough":true}'
execute if score <font> variable matches 5 if score @s sign_font matches ..-1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"obfuscated":true}'

# Styles/Attributes (Disable)
execute if score <font> variable matches 21 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"bold":false}'
execute if score <font> variable matches 22 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"italic":false}'
execute if score <font> variable matches 23 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"underlined":false}'
execute if score <font> variable matches 24 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"strikethrough":false}'
execute if score <font> variable matches 25 if score @s sign_font matches ..-1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"obfuscated":false}'

# Fonts
execute if score <font> variable matches 41 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"minecraft:default"}'
execute if score <font> variable matches 42 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"minecraft:uniform"}'
execute if score <font> variable matches 43 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"minecraft:alt"}'
execute if score <font> variable matches 44 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"minecraft:illageralt"}'

# Colours
execute if score <font> variable matches 51 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"white"}'
execute if score <font> variable matches 52 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_gray"}'
execute if score <font> variable matches 53 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FF0000"}'
execute if score <font> variable matches 54 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FF7f00"}'
execute if score <font> variable matches 55 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FFFF00"}'
execute if score <font> variable matches 56 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00FF00"}'
execute if score <font> variable matches 57 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00FFFF"}'
execute if score <font> variable matches 58 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007FFF"}'
execute if score <font> variable matches 59 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#0000FF"}'
execute if score <font> variable matches 60 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F00FF"}'
execute if score <font> variable matches 61 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FF00FF"}'
execute if score <font> variable matches 62 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FF007F"}'

execute if score <font> variable matches 63 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"gray"}'
execute if score <font> variable matches 64 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"black"}'
execute if score <font> variable matches 65 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F0000"}'
execute if score <font> variable matches 66 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F3F00"}'
execute if score <font> variable matches 67 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F7F00"}'
execute if score <font> variable matches 68 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007F00"}'
execute if score <font> variable matches 69 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007F7F"}'
execute if score <font> variable matches 70 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#003F7F"}'
execute if score <font> variable matches 71 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00007F"}'
execute if score <font> variable matches 72 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#3F007F"}'
execute if score <font> variable matches 73 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F007F"}'
execute if score <font> variable matches 74 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7F003F"}'

execute if score <font> variable matches 75 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"yellow"}'
execute if score <font> variable matches 76 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"gold"}'
execute if score <font> variable matches 77 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#FB6F00"}'
execute if score <font> variable matches 78 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"red"}'
execute if score <font> variable matches 79 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_red"}'

execute if score <font> variable matches 80 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"green"}'
execute if score <font> variable matches 81 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_green"}'
execute if score <font> variable matches 82 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"aqua"}'
execute if score <font> variable matches 83 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_aqua"}'
execute if score <font> variable matches 84 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"blue"}'
execute if score <font> variable matches 85 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_blue"}'
execute if score <font> variable matches 86 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"dark_purple"}'
execute if score <font> variable matches 87 if entity @s[predicate=pandamium:in_spawn,scores={staff_perms=3..,sign_font=..-1}] store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00CE73"}'

# Custom Fonts
execute if score <font> variable matches 91 if score @s staff_perms matches 1.. if score @s item_font matches ..-1 store success score <valid_option> variable run function pandamium:misc/font/custom_fonts/reset
execute if score <font> variable matches 92 if score @s staff_perms matches 1.. if score @s item_font matches ..-1 store success score <valid_option> variable run function pandamium:misc/font/custom_fonts/rainbow

# post
execute if score <valid_option> variable matches 1 store success score <text_changed> variable run data modify storage pandamium:temp Text set from block 3 0 0 front_text.messages[0]
