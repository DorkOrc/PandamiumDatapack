#> styles
# enable booleans
execute if score <style> variable matches 1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"bold":true}'
execute if score <style> variable matches 2 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"italic":true}'
execute if score <style> variable matches 3 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"underlined":true}'
execute if score <style> variable matches 4 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"strikethrough":true}'
execute if score <style> variable matches 5 if score @s sign_font matches ..-1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"obfuscated":true}'

# disable booleans
execute if score <style> variable matches 11 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"bold":false}'
execute if score <style> variable matches 12 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"italic":false}'
execute if score <style> variable matches 13 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"underlined":false}'
execute if score <style> variable matches 14 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"strikethrough":false}'
execute if score <style> variable matches 15 if score @s sign_font matches ..-1 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"obfuscated":false}'

# fonts
execute if score <style> variable matches 21 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"font":"minecraft:default"}'
execute if score <style> variable matches 22 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"font":"minecraft:uniform"}'
execute if score <style> variable matches 23 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"font":"minecraft:alt"}'
execute if score <style> variable matches 24 store success score <valid_option> variable run data modify block 3 0 0 front_text.messages[0] set value '{"nbt":"text","storage":"pandamium:temp","interpret":true,"font":"minecraft:illageralt"}'

# custom fonts
execute if score <style> variable matches 31 store success score <valid_option> variable run function pandamium:impl/font/custom_styles/reset
execute if score <style> variable matches 32 store success score <valid_option> variable run function pandamium:impl/font/custom_styles/rainbow

#> colours
scoreboard players operation <colour> variable = <style> variable
scoreboard players operation <colour> variable %= #100 constant

# solid
execute if score <style> variable matches 101..199 run function pandamium:impl/font/get_colour
execute if score <style> variable matches 101..199 if score <valid_option> variable matches 1 run function pandamium:impl/font/apply_style/solid_colour with storage pandamium:temp colour

# gradient
execute if score <style> variable matches 201..299 run function pandamium:impl/font/get_colour
execute if score <style> variable matches 201..299 if score <valid_option> variable matches 1 run function pandamium:impl/font/apply_style/gradient_colour

#> post
execute if score <valid_option> variable matches 1 run data modify storage pandamium:temp text set from block 3 0 0 front_text.messages[0]
